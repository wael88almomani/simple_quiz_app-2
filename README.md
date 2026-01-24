# 🎯 Exam Master - Flutter Quiz & Exam App

A high-performance Flutter application for exam preparation with AI-generated questions, multiple categories, difficulty levels, and comprehensive result tracking using Hive local storage.

## ✨ Features

### 📚 Multiple Categories
- **SQL** - Database query and management questions
- **Flutter** - Mobile app development questions
- **Dart** - Programming language concepts
- **General Programming** - Core programming principles

### 🎚️ Difficulty Levels
- **Easy** - Perfect for beginners with straightforward questions
- **Hard** - Advanced questions with nuanced options for experienced learners

### 🤖 AI-Powered Questions
- Integration with OpenAI-compatible REST API
- Generates 20 unique questions per exam
- Different questions on every attempt
- Automatic fallback to local questions if API fails

### 🐝 Hive Local Storage
- Fast, lightweight local database
- Stores complete exam history
- Tracks scores and performance over time
- View detailed statistics

### ⚡ Performance Optimized
- Minimal `setState` usage
- Extensive use of `const` widgets
- Smooth animations and transitions
- Efficient widget rebuilds
- Preloaded questions before quiz start

### 📊 Result Tracking
- View score and percentage after each exam
- Comprehensive performance statistics
- Exam history with detailed breakdowns
- Average score calculation
- Sort by date (latest first)

## 📱 App Flow

```
Home Screen → Category Selection → Difficulty Level → Quiz (20 Questions) → Result Screen → History
```

## 🏗️ Project Structure

```
lib/
├── main.dart                      # App entry point with Hive initialization
├── models/
│   ├── question_model.dart        # Question data model with Hive adapter
│   └── result_model.dart          # Result data model with Hive adapter
├── screens/
│   ├── home_screen.dart           # Category selection and stats
│   ├── level_screen.dart          # Difficulty level selection
│   ├── quiz_screen.dart           # Main quiz interface
│   ├── result_screen.dart         # Score and performance display
│   └── history_screen.dart        # Exam history and statistics
├── widgets/
│   ├── question_card.dart         # Question display widget
│   └── answer_option.dart         # Answer option button widget
├── services/
│   ├── ai_service.dart            # AI API integration and fallback
│   └── hive_service.dart          # Local storage operations
├── data/
│   └── fallback_questions.dart    # Local questions for all categories
└── utils/
    ├── constants.dart             # App constants and configuration
    └── app_theme.dart             # Theme and styling
```

## 🚀 Setup Instructions

### Prerequisites
- Flutter SDK (3.10.7 or higher)
- Dart SDK
- Android Studio / VS Code
- An Android/iOS device or emulator

### Installation Steps

1. **Clone the repository**
   ```bash
   cd simple_quiz_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate Hive adapters**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Configure AI API (Optional)**
   
   Open `lib/services/ai_service.dart` and update:
   ```dart
   static const String _apiKey = 'YOUR_API_KEY_HERE';
   ```
   
   Or update in `lib/utils/constants.dart`:
   ```dart
   static const String aiApiKey = 'YOUR_API_KEY_HERE';
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

## 🔑 AI Integration

### OpenAI API Setup

The app supports any OpenAI-compatible API. To use AI-generated questions:

1. Get an API key from [OpenAI](https://platform.openai.com/)
2. Update the API key in `lib/services/ai_service.dart`
3. The app will automatically generate unique questions for each exam

### Fallback Mechanism

If the AI API fails or is not configured:
- App automatically uses local questions
- 20 pre-written questions per category per difficulty
- No internet required
- Seamless user experience

## 🐝 Hive Storage

### What is Hive?

Hive is a lightweight, blazing-fast key-value database written in pure Dart. It offers:
- **Fast performance** - No SQL overhead
- **Easy to use** - Simple API
- **Strongly typed** - Type-safe storage
- **Encrypted** - Optional encryption support

### Storage Structure

```dart
// Result Model
ResultModel {
  category: String
  difficulty: String
  score: int
  totalQuestions: int
  percentage: double
  dateTime: DateTime
}
```

### Storage Operations

- **Add Result**: Automatically after completing exam
- **Read Results**: View in history screen
- **Clear History**: Delete all stored results
- **Statistics**: Calculate average scores

## 🎨 UI/UX Features

### Visual Design
- Modern Material Design 3
- Category-specific color schemes
- Smooth animations
- Responsive layouts
- Intuitive navigation

### User Experience
- Progress indicators during quiz
- Real-time score calculation
- Performance-based messages
- Exit confirmation dialogs
- Loading states for AI requests

## 📊 Performance Metrics

### Optimization Techniques
1. **Widget Optimization**
   - `const` constructors everywhere possible
   - Minimal widget rebuilds
   - Efficient state management with `setState`

2. **Data Management**
   - Hive for fast local storage
   - Preload questions before quiz
   - Cached category colors

3. **Network**
   - Timeout handling (30 seconds)
   - Automatic fallback mechanism
   - Error recovery

## 🎮 Quiz Logic

- **20 Questions** per exam
- **4 Options** per question (A, B, C, D)
- **Single Selection** per question
- **No Time Limit** - learn at your own pace
- **Instant Feedback** at the end
- **Different Questions** every time (with AI)

## 📈 Result Calculation

```dart
Score = Correct Answers / Total Questions
Percentage = (Score / Total) * 100

Rating System:
- Excellent: ≥ 90%
- Great: ≥ 70%
- Good: ≥ 50%
- Keep Practicing: < 50%
```

## 🏪 Google Play Readiness

### Configuration

The app is pre-configured for Google Play deployment:

```kotlin
// android/app/build.gradle.kts
applicationId = "com.exammaster.quizapp"
versionCode = 1
versionName = "1.0.0"
```

### Release Build

1. **Generate keystore**
   ```bash
   keytool -genkey -v -keystore ~/exam-master-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias exam-master
   ```

2. **Configure signing**
   
   Create `android/key.properties`:
   ```properties
   storePassword=<your-store-password>
   keyPassword=<your-key-password>
   keyAlias=exam-master
   storeFile=<path-to-keystore>
   ```

3. **Build AAB**
   ```bash
   flutter build appbundle --release
   ```

4. **Build APK**
   ```bash
   flutter build apk --release
   ```

### App Store Listing Suggestions

**Title**: Exam Master - Quiz & Learning App

**Short Description**: 
Master SQL, Flutter, Dart & Programming with AI-generated quizzes

**Full Description**:
Prepare for your exams with Exam Master, the ultimate quiz app featuring:
- 4 comprehensive categories
- AI-powered questions
- Easy and Hard difficulty levels
- Track your progress
- Offline support
- Beautiful, intuitive interface

## 🔧 Customization

### Adding New Categories

1. Add category in `lib/utils/constants.dart`:
   ```dart
   static const List<String> categories = [
     'SQL',
     'Flutter',
     'Dart',
     'General Programming',
     'Your New Category', // Add here
   ];
   ```

2. Add color in `lib/utils/app_theme.dart`:
   ```dart
   static const Map<String, Color> categoryColors = {
     // ...
     'Your New Category': Color(0xFF...), // Add color
   };
   ```

3. Add questions in `lib/data/fallback_questions.dart`

### Modifying Question Count

Update in `lib/utils/constants.dart`:
```dart
static const int questionsPerExam = 20; // Change value
```

## 🐛 Troubleshooting

### Common Issues

1. **Hive Adapter Error**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

2. **Build Errors**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

3. **API Not Working**
   - Check API key configuration
   - Verify internet connection
   - App will use fallback questions automatically

## 📝 Development Notes

### Code Quality
- Clean, maintainable code
- Comprehensive comments
- Type-safe implementations
- Error handling throughout

### State Management
- Uses `setState` only (as per requirements)
- No external state management libraries
- Efficient local state handling

### Best Practices
- Follows Flutter style guide
- Material Design 3 guidelines
- Performance optimization
- User-first approach

## 🤝 Contributing

To contribute to this project:

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed for educational and commercial use.

## 🎯 Future Enhancements

- [ ] Timed exam mode
- [ ] Detailed answer explanations
- [ ] Social features (leaderboards)
- [ ] More categories
- [ ] Dark mode
- [ ] Multiple languages
- [ ] Cloud sync
- [ ] Certificate generation

## 📧 Support

For issues, questions, or suggestions, please open an issue on GitHub.

---

**Built with  using Flutter & Dart**

