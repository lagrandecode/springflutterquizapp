



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:springflutterquizapp/provider/quiz_controller.dart';
import 'package:springflutterquizapp/screens/quiz_page.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create: (_)=>QuizController(),child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),

    );
  }
}
