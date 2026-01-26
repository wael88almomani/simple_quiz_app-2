import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'services/hive_service.dart';
import 'screens/home_screen.dart';
import 'utils/app_theme.dart';
import 'utils/constants.dart';

/// Entry point - Initializes Hive database and system configurations
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveService.init();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
