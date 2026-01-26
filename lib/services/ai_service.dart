import '../models/question_model.dart';
import '../data/fallback_questions.dart';

/// Service for loading quiz questions from local data
/// Returns pre-defined questions based on category and difficulty
class AIService {
  /// Generates 30 quiz questions based on category and difficulty
  /// Returns questions from local data bank in random order
  Future<List<QuestionModel>> generateQuestions({
    required String category,
    required String difficulty,
  }) async {
    // Simulate slight delay for better UX (like loading from a source)
    await Future.delayed(const Duration(milliseconds: 500));

    // Return local questions directly
    return FallbackQuestions.getQuestions(category, difficulty);
  }
}
