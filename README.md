# 📚 TOEIC Reading App

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Latest-FFA500?logo=firebase)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

**An AI-powered TOEIC reading practice application** 📖  
Helping learners master reading comprehension with interactive tests, vocabulary drills, and AI-driven explanations.

[Features](#features) • [Tech Stack](#-tech-stack) • [Installation](#-installation) • [Architecture](#-architecture) • [API](#-api)

</div>

---

## 🎯 Overview

TOEIC Reading App is a comprehensive Flutter mobile application designed to help users excel in TOEIC reading comprehension tests. The app provides:

- 📝 **TOEIC Part Tests** - Practice tests for Parts 5, 6, and 7 with real exam conditions
- 💬 **Vocabulary Training** - Interactive flashcards and vocabulary drills
- 🤖 **AI Tutor** - Personalized explanations and performance analysis
- 📊 **Performance Analytics** - Track progress and improvement over time
- 🔥 **Firebase Integration** - Secure authentication and cloud storage

---

## ✨ Features

### 👤 User Authentication

- Email/Password registration and login
- Firebase Authentication
- Session persistence
- Secure logout

### 📚 Reading Tests (Core Feature)

- **TOEIC Part Organization:**
  - Part 5: Incomplete sentences (30 questions)
  - Part 6: Text completion (16 questions)
  - Part 7: Reading comprehension (54 questions)
  - Full Test Mode (all 100 questions)
- **Test Taking:**
  - Timed question-by-question interface
  - Countdown timer with visual feedback
  - Answer selection and review
  - Navigation drawer for quick question jumping
  - Previous/Next navigation

- **Results & Analysis:**
  - Detailed score calculation (TOEIC scale)
  - Performance by section breakdown
  - Question review with explanations
  - Full test result history

### 📖 Vocabulary Learning

- Organized vocabulary topics
- Interactive flashcard system
- Spaced repetition learning
- TOEIC-themed vocabulary

### 🤖 AI Tutor

- **Smart Explanations:** AI-generated answers for each question
- **Performance Analysis:** Detailed insights on test results
- **Learning Recommendations:** Personalized guidance based on weak areas
- **Full Test Analysis:** Comprehensive test performance review

### 📊 Performance Tracking

- Overall statistics dashboard
- Score trends and progress graphs
- Performance by TOEIC part
- Historical test records
- Detailed attempt history

### 🎨 User Experience

- Clean Material Design interface
- Dark/Light theme support
- Smooth navigation with bottom tabs
- Intuitive test-taking workflow
- Real-time countdown timers

---

## 🛠️ Tech Stack

### Frontend

- **Framework:** Flutter 3.x
- **Language:** Dart
- **State Management:** BLoC Pattern (flutter_bloc, cubit)
- **Navigation:** Flutter Navigator with MaterialPageRoute
- **UI:** Material Design
- **Local Storage:** Hive
- **Networking:** Dio
- **Charts:** FL Charts

### Backend & Services

- **Authentication:** Firebase Auth
- **Database:** Cloud Firestore
- **File Storage:** Firebase Storage

### Development Tools

- **IDE:** VS Code / Android Studio
- **Version Control:** Git
- **Testing:** Flutter Test framework

---

## 📁 Project Structure

```
toeic_reading_app/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── firebase_options.dart        # Firebase configuration
│   │
│   ├── core/                        # Core infrastructure
│   │   ├── di/
│   │   │   └── injection_container.dart    # GetIt dependency injection
│   │   ├── theme/
│   │   │   └── theme_cubit.dart           # Theme management
│   │   ├── utils/
│   │   │   ├── score_calculator.dart      # TOEIC score calculation
│   │   │   └── seed_data.dart            # Initial test data
│   │   └── error/                         # Error handling
│   │
│   └── features/                    # Feature modules (Clean Architecture)
│       ├── auth/                    # Authentication feature
│       │   ├── presentation/
│       │   │   ├── bloc/
│       │   │   │   └── auth_bloc.dart
│       │   │   └── pages/
│       │   │       └── auth_screen.dart
│       │   ├── domain/              # Business logic
│       │   │   ├── repositories/
│       │   │   └── usecases/
│       │   └── data/                # Data sources & models
│       │       ├── datasources/
│       │       ├── models/
│       │       └── repositories/
│       │
│       ├── home/                    # Main navigation & profile
│       │   ├── presentation/
│       │   │   └── pages/
│       │   │       ├── main_screen.dart
│       │   │       ├── profile_screen.dart
│       │   │       ├── settings_screen.dart
│       │   │       ├── stats_screen.dart
│       │   │       └── history_detail_screen.dart
│       │   └── ...
│       │
│       ├── test_reading/            # Core feature: TOEIC tests
│       │   ├── presentation/
│       │   │   └── pages/
│       │   │       ├── test_list_screen.dart      # Browse tests
│       │   │       ├── test_detail_screen.dart    # Test info
│       │   │       ├── test_work_screen.dart      # Test interface
│       │   │       └── result_screen.dart         # Results
│       │   ├── domain/
│       │   │   ├── entities/
│       │   │   ├── repositories/
│       │   │   └── usecases/
│       │   │       ├── get_available_tests_usecase.dart
│       │   │       ├── get_test_details_usecase.dart
│       │   │       └── submit_test_usecase.dart
│       │   └── data/
│       │       ├── models/
│       │       ├── datasources/
│       │       └── repositories/
│       │
│       ├── vocabulary/              # Vocabulary feature
│       │   ├── presentation/
│       │   │   └── pages/
│       │   │       ├── vocabulary_screen.dart
│       │   │       └── flashcard_screen.dart
│       │   └── ...
│       │
│       ├── ai_tutor/                # AI explanation feature
│       │   ├── data/
│       │   │   └── ai_remote_datasource.dart
│       │   ├── presentation/
│       │   │   ├── bloc/
│       │   │   │   └── ai_bloc.dart
│       │   │   └── widgets/
│       │   │       ├── ai_explanation_sheet.dart
│       │   │       └── full_test_analysis_card.dart
│       │   └── ...
│       │
│       ├── stats/                   # Performance analytics
│       └── admin/                   # Admin dashboard
│
├── assets/                          # App assets & icons
├── android/                         # Android native code
├── ios/                            # iOS native code
├── web/                            # Web platform
├── pubspec.yaml                    # Dependencies & configuration
├── analysis_options.yaml           # Lint rules
└── firebase.json                   # Firebase configuration
```

---

## 🚀 Installation & Setup

### Prerequisites

- Flutter 3.x (latest stable)
- Dart 3.x
- Android SDK / Xcode (for native builds)
- Firebase project configured

### Steps

**1. Clone the repository**

```bash
git clone <repository-url>
cd mobileapp/toeic_reading_app
```

**2. Install dependencies**

```bash
flutter pub get
```

**3. Configure Firebase**

- Download `google-services.json` from Firebase Console
- Place in `android/app/`
- Configure iOS through Firebase Console

**4. Run the app**

```bash
# Development mode
flutter run

# On specific device
flutter run -d <device-id>

# Release mode (Android APK)
flutter build apk --release
```

---

## 🏗️ Architecture

The app follows **Clean Architecture** with separation of concerns:

```
┌─────────────────────────────────────────┐
│         Presentation Layer              │
│  (UI, BLoC, Cubits, Pages, Widgets)    │
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│           Domain Layer                  │
│  (Entities, Repositories, UseCases)     │
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│            Data Layer                   │
│  (Models, DataSources, Repositories)    │
└─────────────────────────────────────────┘
```

**Design Patterns Used:**

- **BLoC Pattern** - State management for complex features
- **Repository Pattern** - Data abstraction
- **Singleton Pattern** - Service locator (GetIt)
- **Use Case Pattern** - Business logic encapsulation
- **Dependency Injection** - Constructor injection via GetIt

---

## 🔌 API & Data Sources

### Firebase Services

**Firestore Collections:**

- `users/` - User profiles and preferences
- `tests/` - TOEIC test questions and content
- `vocabulary/` - Vocabulary topics and words
- `user_results/` - Test attempt results and scores
- `user_history/` - Historical test records

**Remote Config:**

- Test content versioning
- Feature flags
- App configuration

### Data Flow

```
UI (Screens)
  ↓
BLoC/Cubit (State Management)
  ↓
Use Cases (Business Logic)
  ↓
Repositories (Data Abstraction)
  ↓
Data Sources (Firebase/Local)
```

---

## 📊 Key Metrics

- **TOEIC Score Calculation:** 10-990 scale based on correct answers
- **Test Timing:**
  - Part 5 & 6: 20 minutes combined
  - Part 7: 40-45 minutes
- **Question Format:** Multiple choice (4 options)
- **Analytics:** Tracks accuracy by part, question type, and time spent

---

## 🔐 Security & Privacy

- ✅ Firebase Authentication (secure password hashing)
- ✅ Firestore Security Rules (user data protection)
- ✅ Local data encrypted with Hive
- ✅ HTTPS only for API calls
- ✅ No sensitive data in logs

---

## 🐛 Development

### Build & Test

```bash
# Run tests
flutter test

# Analyze code
flutter analyze

# Format code
dart format lib/

# Build for production
flutter build apk --release
flutter build appbundle --release  # For Play Store
```

### Debug

```bash
# Enable debug mode
flutter run -v

# Profile app performance
flutter run --profile

# Run with specific Firebase configuration
flutter run --dart-define=FIREBASE_CONFIG=prod
```

---

## 📝 Git Workflow

```bash
# Create feature branch
git checkout -b feature/new-feature

# Make changes and commit
git add .
git commit -m "feat: add new feature"

# Push to remote
git push origin feature/new-feature

# Create Pull Request on GitHub
```

---

## 📞 Support & Contributing

- **Bug Reports:** Create an issue on GitHub
- **Feature Requests:** Submit a discussion
- **Pull Requests:** Follow the git workflow above

---

## 📄 License

MIT License - feel free to use this project for learning and development.

---

## 👨‍💻 Author

Developed as a comprehensive TOEIC preparation tool with modern Flutter practices and cloud integration.

**Key Technologies:**

- Flutter & Dart
- Firebase (Auth, Firestore, Storage)
- BLoC State Management
- Clean Architecture
- Material Design

---

<div align="center">

Made with ❤️ for TOEIC learners worldwide 🌍

</div>
