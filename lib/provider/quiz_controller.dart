



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:springflutterquizapp/model/quiz.dart';
import 'package:http/http.dart' as http;

class QuizController extends ChangeNotifier{
  List<QuizModel> _questions = [];
  int _currentIndex = 0;
  int _correct = 0;
  int _wrong = 0;
  bool _answered = false;
  String? _selectedAnswer;

  List<QuizModel> get questions => _questions;
  int get currentIndex => _currentIndex;
  int get correct => _correct;
  int get wrong => _wrong;
  bool get answered => _answered;
  String? get selectedAnswer => _selectedAnswer;


  Future<void> fetchQuestions() async{
    final response = await http.get(Uri.parse("http://localhost:8080/quiz"));
    if(response.statusCode == 200){
      List data = jsonDecode(response.body);
      _questions = data.map((e)=>QuizModel.fromJson(e)).toList();
      notifyListeners();
    }

  }

  void answercor(String answer){
    if(_answered) return;
    _selectedAnswer = answer;
    _answered = true;
    if(answer == _questions[_currentIndex].correctAnswer){
      _correct++;
    }else{
      _wrong++;

    }
    notifyListeners();
  }

  void nextQuestion(){
    _currentIndex++;
    _answered = false;
    _selectedAnswer = null;
    notifyListeners();
  }

  void reset(){
    _currentIndex = 0;
    _correct = 0;
    _wrong = 0;
    _answered = false;
    _selectedAnswer = null;
    notifyListeners();
  }






}
