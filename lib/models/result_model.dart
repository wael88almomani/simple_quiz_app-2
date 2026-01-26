import 'package:hive/hive.dart';

part 'result_model.g.dart';

/// Model representing quiz result stored in history
/// Persisted in Hive database for result tracking
@HiveType(typeId: 1)
class ResultModel extends HiveObject {
  @HiveField(0)
  final String category;

  @HiveField(1)
  final String difficulty;

  @HiveField(2)
  final int score;

  @HiveField(3)
  final int totalQuestions;

  @HiveField(4)
  final double percentage;

  @HiveField(5)
  final DateTime dateTime;

  ResultModel({
    required this.category,
    required this.difficulty,
    required this.score,
    required this.totalQuestions,
    required this.percentage,
    required this.dateTime,
  });

  String get scoreDisplay => '$score/$totalQuestions';

  String get formattedDate {
    final date = dateTime;
    return '${date.day}/${date.month}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
}
