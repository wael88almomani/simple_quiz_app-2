import 'package:hive/hive.dart';

part 'question_model.g.dart';

/// Model representing a quiz question with multiple choice options
/// Stored in Hive database for caching and offline access
@HiveType(typeId: 0)
class QuestionModel extends HiveObject {
  @HiveField(0)
  final String question;

  @HiveField(1)
  final List<String> options;

  @HiveField(2)
  final int correctAnswerIndex;

  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });

  /// Parse question from JSON response
  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      question: json['question'] as String,
      options: List<String>.from(json['options'] as List),
      correctAnswerIndex: json['correctAnswerIndex'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'options': options,
      'correctAnswerIndex': correctAnswerIndex,
    };
  }
}
