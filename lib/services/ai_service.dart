import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/question_model.dart';
import '../data/fallback_questions.dart';

class AIService {
  // Replace with your actual OpenAI-compatible API endpoint
  static const String _baseUrl = 'https://api.openai.com/v1/chat/completions';
  static const String _apiKey =
      'YOUR_API_KEY_HERE'; // Replace with your API key

  /// Generate 20 AI questions based on category and difficulty
  /// Falls back to local questions if API fails
  Future<List<QuestionModel>> generateQuestions({
    required String category,
    required String difficulty,
  }) async {
    try {
      // Attempt to fetch from AI API
      final questions = await _fetchQuestionsFromAI(category, difficulty);

      if (questions.isNotEmpty && questions.length == 20) {
        return questions;
      }

      // Fallback if AI doesn't return 20 questions
      return _getFallbackQuestions(category, difficulty);
    } catch (e) {
      // Fallback on any error
      print('AI Service Error: $e. Using fallback questions.');
      return _getFallbackQuestions(category, difficulty);
    }
  }

  /// Fetch questions from AI API
  Future<List<QuestionModel>> _fetchQuestionsFromAI(
    String category,
    String difficulty,
  ) async {
    final prompt = _buildPrompt(category, difficulty);

    final response = await http
        .post(
          Uri.parse(_baseUrl),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $_apiKey',
          },
          body: jsonEncode({
            'model': 'gpt-3.5-turbo',
            'messages': [
              {
                'role': 'system',
                'content':
                    'You are an expert exam question generator. Generate exactly 20 multiple-choice questions with 4 options each.',
              },
              {'role': 'user', 'content': prompt},
            ],
            'temperature': 0.8,
          }),
        )
        .timeout(const Duration(seconds: 30));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final content = data['choices'][0]['message']['content'] as String;

      // Parse the AI response
      return _parseAIResponse(content);
    } else {
      throw Exception('API Error: ${response.statusCode}');
    }
  }

  /// Build prompt for AI
  String _buildPrompt(String category, String difficulty) {
    return '''
Generate exactly 20 $difficulty difficulty multiple-choice questions about $category.

For each question, provide:
- A clear question
- 4 answer options (A, B, C, D)
- The index of the correct answer (0-3)

Format your response as a JSON array:
[
  {
    "question": "What is...?",
    "options": ["Option A", "Option B", "Option C", "Option D"],
    "correctAnswerIndex": 0
  },
  ...
]

Difficulty guidelines:
- Easy: Basic concepts, obvious incorrect answers
- Hard: Advanced concepts, similar-looking options, nuanced differences

Return ONLY the JSON array, no additional text.
''';
  }

  /// Parse AI response into QuestionModel list
  List<QuestionModel> _parseAIResponse(String content) {
    try {
      // Clean up the response if needed
      String cleaned = content.trim();

      // Remove markdown code blocks if present
      if (cleaned.startsWith('```json')) {
        cleaned = cleaned.substring(7);
      }
      if (cleaned.startsWith('```')) {
        cleaned = cleaned.substring(3);
      }
      if (cleaned.endsWith('```')) {
        cleaned = cleaned.substring(0, cleaned.length - 3);
      }
      cleaned = cleaned.trim();

      final List<dynamic> jsonList = jsonDecode(cleaned);

      return jsonList
          .map((json) => QuestionModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error parsing AI response: $e');
      return [];
    }
  }

  /// Get fallback questions from local data
  List<QuestionModel> _getFallbackQuestions(
    String category,
    String difficulty,
  ) {
    return FallbackQuestions.getQuestions(category, difficulty);
  }
}
