import 'package:flutter/material.dart';
import '../models/result_model.dart';
import '../services/hive_service.dart';
import '../utils/app_theme.dart';
import '../utils/constants.dart';
import 'home_screen.dart';
import 'history_screen.dart';

class ResultScreen extends StatefulWidget {
  final String category;
  final String difficulty;
  final int score;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.category,
    required this.difficulty,
    required this.score,
    required this.totalQuestions,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _saveResult();
    _setupAnimation();
  }

  void _setupAnimation() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    _animationController.forward();
  }

  Future<void> _saveResult() async {
    final percentage = (widget.score / widget.totalQuestions) * 100;

    final result = ResultModel(
      category: widget.category,
      difficulty: widget.difficulty,
      score: widget.score,
      totalQuestions: widget.totalQuestions,
      percentage: percentage,
      dateTime: DateTime.now(),
    );

    await HiveService.addResult(result);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = (widget.score / widget.totalQuestions) * 100;
    final message = AppConstants.getScoreMessage(percentage);
    final color = _getScoreColor(percentage);

    return WillPopScope(
      onWillPop: () async {
        _navigateToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Results'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Animated Score Display
                  ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.1),
                        shape: BoxShape.circle,
                        border: Border.all(color: color, width: 4),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '${percentage.toStringAsFixed(0)}%',
                            style: TextStyle(
                              fontSize: 56,
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            message,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Score Details Card
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Score Details',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 20),
                          _buildDetailRow(
                            'Category',
                            widget.category,
                            Icons.category,
                          ),
                          const Divider(height: 24),
                          _buildDetailRow(
                            'Difficulty',
                            widget.difficulty,
                            Icons.speed,
                          ),
                          const Divider(height: 24),
                          _buildDetailRow(
                            'Correct Answers',
                            '${widget.score} / ${widget.totalQuestions}',
                            Icons.check_circle,
                          ),
                          const Divider(height: 24),
                          _buildDetailRow(
                            'Wrong Answers',
                            '${widget.totalQuestions - widget.score}',
                            Icons.cancel,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Performance Indicator
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Performance',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 16),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              value: percentage / 100,
                              backgroundColor: Colors.grey.shade200,
                              valueColor: AlwaysStoppedAnimation<Color>(color),
                              minHeight: 20,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _getPerformanceText(percentage),
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppTheme.textSecondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Action Buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _retakeExam,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retake Exam'),
                    ),
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: _viewHistory,
                      icon: const Icon(Icons.history),
                      label: const Text('View History'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: const BorderSide(color: AppTheme.primaryColor),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    child: TextButton.icon(
                      onPressed: _navigateToHome,
                      icon: const Icon(Icons.home),
                      label: const Text('Back to Home'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 24, color: AppTheme.primaryColor),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: AppTheme.textSecondary),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
      ],
    );
  }

  Color _getScoreColor(double percentage) {
    if (percentage >= AppConstants.excellentThreshold) {
      return AppTheme.correctColor;
    } else if (percentage >= AppConstants.goodThreshold) {
      return Colors.blue;
    } else if (percentage >= AppConstants.passThreshold) {
      return AppTheme.warningColor;
    } else {
      return AppTheme.incorrectColor;
    }
  }

  String _getPerformanceText(double percentage) {
    if (percentage >= AppConstants.excellentThreshold) {
      return 'Outstanding performance! You have mastered this topic.';
    } else if (percentage >= AppConstants.goodThreshold) {
      return 'Great work! You have a solid understanding of this topic.';
    } else if (percentage >= AppConstants.passThreshold) {
      return 'Good effort! Keep practicing to improve your score.';
    } else {
      return 'Keep studying! Review the material and try again.';
    }
  }

  void _retakeExam() {
    Navigator.pop(context);
  }

  void _viewHistory() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HistoryScreen()),
    );
  }

  void _navigateToHome() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (route) => false,
    );
  }
}
