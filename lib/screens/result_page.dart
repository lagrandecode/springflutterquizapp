



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/quiz_controller.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuizController>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Correct Answers: ${controller.correct}"),
            Text("Wrong Answers: ${controller.wrong}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.reset();
              },
              child: Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}