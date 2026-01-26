import 'package:hive_flutter/hive_flutter.dart';
import '../models/result_model.dart';

/// Service managing local database operations using Hive
/// Handles quiz results persistence and retrieval
class HiveService {
  static const String _resultsBoxName = 'exam_results';
  static Box<ResultModel>? _resultsBox;

  /// Initializes Hive database and registers type adapters
  /// Must be called before using any Hive operations
  static Future<void> init() async {
    await Hive.initFlutter();

    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(ResultModelAdapter());
    }

    _resultsBox = await Hive.openBox<ResultModel>(_resultsBoxName);
  }

  /// Add a new result to Hive
  static Future<void> addResult(ResultModel result) async {
    await _resultsBox?.add(result);
  }

  /// Get all results sorted by date (latest first)
  static List<ResultModel> getAllResults() {
    final results = _resultsBox?.values.toList() ?? [];
    results.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return results;
  }

  /// Clear all results from history
  static Future<void> clearHistory() async {
    await _resultsBox?.clear();
  }

  /// Get results count
  static int getResultsCount() {
    return _resultsBox?.length ?? 0;
  }

  /// Calculates average percentage score across all quiz attempts
  static double getAverageScore() {
    final results = getAllResults();
    if (results.isEmpty) return 0.0;

    final totalPercentage = results.fold<double>(
      0.0,
      (sum, result) => sum + result.percentage,
    );

    return totalPercentage / results.length;
  }

  /// Get results by category
  static List<ResultModel> getResultsByCategory(String category) {
    return getAllResults()
        .where((result) => result.category == category)
        .toList();
  }

  /// Close Hive boxes
  static Future<void> close() async {
    await _resultsBox?.close();
  }
}
