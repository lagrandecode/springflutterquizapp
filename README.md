# Spring Flutter Quiz App

A modern quiz application built with Flutter and Spring Boot, featuring a clean UI and real-time question management.

## Features

- **Interactive Quiz Interface**: Clean and intuitive UI for answering questions
- **Real-time Question Management**: Questions are fetched from a Spring Boot backend
- **Score Tracking**: Keeps track of correct and incorrect answers
- **Progress Tracking**: Shows current question number and total questions
- **Immediate Feedback**: Visual feedback for correct/incorrect answers
- **Responsive Design**: Works across different screen sizes

## Tech Stack

### Frontend
- **Flutter**: For building the cross-platform mobile application
- **Provider**: For state management
- **HTTP**: For API communication with the backend

### Backend
- **Spring Boot**: For serving quiz questions and managing the backend
- **REST API**: For communication between frontend and backend

## Project Structure

```
lib/
├── main.dart              # Application entry point
├── model/                 # Data models
├── provider/              # State management
│   └── quiz_controller.dart
├── screens/               # UI screens
│   ├── quiz_page.dart
│   └── result_page.dart
└── widget/                # Reusable widgets
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Java Development Kit (JDK)
- Spring Boot
- Android Studio / VS Code

### Installation

1. Clone the repository:
```bash
git clone [repository-url]
```

2. Install Flutter dependencies:
```bash
flutter pub get
```

3. Start the Spring Boot backend:
```bash
cd backend
./mvnw spring-boot:run
```

4. Run the Flutter application:
```bash
flutter run
```

## Usage

1. Launch the application
2. Questions will be automatically fetched from the backend
3. Select your answer by tapping on one of the options
4. The app will show whether your answer was correct (green) or incorrect (red)
5. Tap "Next" to proceed to the next question
6. View your final score on the results page

## API Endpoints

- `GET /quiz`: Fetches all quiz questions
- Response format:
```json
[
  {
    "question": "Sample question?",
    "option1": "Option 1",
    "option2": "Option 2",
    "option3": "Option 3",
    "correctAnswer": "Option 1"
  }
]
```

## State Management

The app uses Provider for state management with the following key states:
- Questions list
- Current question index
- Score (correct/wrong answers)
- Answer status
- Selected answer

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Spring Boot team for the robust backend framework
- Provider package for state management
