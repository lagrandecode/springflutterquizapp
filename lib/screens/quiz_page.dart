import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:springflutterquizapp/provider/quiz_controller.dart';
import 'package:springflutterquizapp/screens/result_page.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizController = Provider.of<QuizController>(context);

    if (quizController.questions.isEmpty) {
      quizController.fetchQuestions();
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (quizController.currentIndex >= quizController.questions.length) {
      return ResultPage();
    }

    final question = quizController.questions[quizController.currentIndex];

    return Scaffold(
      appBar: AppBar(title: Text("Question ${quizController.currentIndex + 1}")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(question.question, style: TextStyle(fontSize: 20)),
          ),
          ...[question.option1, question.option2, question.option3].map(
                (option) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: quizController.answered
                    ? (option == question.correctAnswer
                    ? Colors.green
                    : (option == quizController.selectedAnswer
                    ? Colors.red
                    : null))
                    : null,
              ),
              onPressed: () => quizController.answercor(option),
              child: Text(option),
            ),
          ),
          if (quizController.answered)
            ElevatedButton(
              onPressed: () => quizController.nextQuestion(),
              child: Text("Next"),
            )
        ],
      ),
    );
  }
}