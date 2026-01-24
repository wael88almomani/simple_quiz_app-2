// App Constants

class AppConstants {
  // Categories
  static const List<String> categories = [
    'SQL',
    'Flutter',
    'Dart',
    'General Programming',
  ];

  // Difficulty Levels
  static const String difficultyEasy = 'Easy';
  static const String difficultyHard = 'Hard';

  // Quiz Configuration
  static const int questionsPerExam = 20;
  static const int optionsPerQuestion = 4;

  // AI Configuration (Replace with your actual API endpoint and key)
  static const String aiApiEndpoint =
      'https://api.openai.com/v1/chat/completions';
  static const String aiApiKey = 'YOUR_API_KEY_HERE';

  // Hive Box Names
  static const String resultsBoxName = 'exam_results';

  // Navigation Routes
  static const String homeRoute = '/';
  static const String levelRoute = '/level';
  static const String quizRoute = '/quiz';
  static const String resultRoute = '/result';
  static const String historyRoute = '/history';

  // App Info
  static const String appName = 'Exam Master 2';
  static const String appVersion = '1.0.0';

  // Score Thresholds
  static const double excellentThreshold = 90.0;
  static const double goodThreshold = 70.0;
  static const double passThreshold = 50.0;

  // Messages
  static String getScoreMessage(double percentage) {
    if (percentage >= excellentThreshold) {
      return 'Excellent! 🎉';
    } else if (percentage >= goodThreshold) {
      return 'Great Job! 👏';
    } else if (percentage >= passThreshold) {
      return 'Good Effort! 👍';
    } else {
      return 'Keep Practicing! 💪';
    }
  }
}
