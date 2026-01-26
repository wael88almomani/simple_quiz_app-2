# 📱 ExaCode

**Advanced Programming Quiz Application**

---

## 🎯 Overview

**ExaCode** is an offline quiz application for developers featuring 240 challenging questions across SQL, Flutter, Dart, and Python.

### Key Features

- ✅ **100% Offline** - No internet required
- ✅ **240 Questions** - 30 per difficulty level (Easy/Hard) × 4 categories
- ✅ **Randomized** - Unique question order each session
- ✅ **Progress Tracking** - Complete history with filters
- ✅ **Privacy First** - All data stored locally

---

## 🛠️ Tech Stack

- **Flutter** 3.10.7+
- **Dart** 3.0+
- **Hive** 2.2.3 (Local database)

---

## 📁 Project Structure

```
lib/
├── main.dart
├── data/
│   └── fallback_questions.dart  # 240 questions
├── models/
│   ├── question_model.dart
│   └── result_model.dart
├── screens/
│   ├── home_screen.dart         # Category selection
│   ├── level_screen.dart        # Difficulty selection
│   ├── quiz_screen.dart         # Quiz interface
│   ├── result_screen.dart       # Score display
│   ├── history_screen.dart      # Past attempts
│   └── about_screen.dart        # App info
├── services/
│   ├── ai_service.dart
│   └── hive_service.dart
├── utils/
│   ├── app_theme.dart
│   └── constants.dart
└── widgets/
    ├── question_card.dart
    └── answer_option.dart
```

---

## 📱 Screens

### 1. Home Screen
- Category selection (SQL, Flutter, Dart, Python)
- Navigation to History and About
- Color-coded category cards

### 2. Level Screen
- Difficulty selection (Easy/Hard)
- Category info and exam details
- 30 questions, 4 options per question

### 3. Quiz Screen
- Question navigation with progress indicator
- Answer selection with visual feedback
- Exit confirmation dialog

### 4. Result Screen
- Score display with percentage
- Performance message (≥90% Excellent, ≥70% Great, ≥50% Good)
- Auto-save to history
- Retake and Home actions

### 5. History Screen
- List of past attempts
- Filter by category
- Score, date, and performance display

### 6. About Screen
- App version and features
- Developer info
- Statistics (240 questions, 4 categories)

---

## 💾 Data Models

### QuestionModel
```dart
- String question
- List<String> options (4 options)
- int correctAnswerIndex
```

### ResultModel
```dart
- String category
- String difficulty
- int score
- int totalQuestions
- DateTime timestamp
```

---

## 📊 Question Bank

| Category | Easy | Hard | Total |
|----------|------|------|-------|
| SQL      | 30   | 30   | 60    |
| Flutter  | 30   | 30   | 60    |
| Dart     | 30   | 30   | 60    |
| Python   | 30   | 30   | 60    |
| **Total**| **120** | **120** | **240** |

---

## 🚀 Installation

```bash
# Clone repository
git clone https://github.com/waelalmomani/exacode.git
cd exacode

# Install dependencies
flutter pub get

# Generate Hive adapters
flutter packages pub run build_runner build

# Run app
flutter run
```

---

## 📦 Build

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release
```

---

## 🧪 Testing

```bash
# Run all tests
flutter test

# With coverage
flutter test --coverage
```

---

## ⚙️ Configuration

### Constants (`utils/constants.dart`)
```dart
- appName: 'ExaCode'
- appVersion: '1.0.0'
- questionsPerExam: 30
- categories: ['SQL', 'Flutter', 'Dart', 'Python']
- Score thresholds: Excellent ≥90%, Good ≥70%, Pass ≥50%
```

---

## 🔐 Privacy

- 100% offline - no network requests
- No analytics or tracking
- No ads
- All data stored locally on device
- See [PRIVACY_POLICY.md](PRIVACY_POLICY.md)

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file

Copyright (c) 2026 Wa'el Almomani

---

## 👨‍💻 Developer

**Wa'el Almomani** - wael84almomani@gmail.com

---

## 🤝 Contributing

1. Fork the project
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

---

**Built with ❤️ using Flutter**

⭐ Star this project if you find it helpful!

