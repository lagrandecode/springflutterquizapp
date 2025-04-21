class QuizModel {

  final int id;
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String correctAnswer;

  QuizModel(
      {required this.id, required this.question, required this.option1, required this.option2, required this.option3, required this.correctAnswer});

  factory QuizModel.fromJson(Map<String, dynamic> json){
    return QuizModel(
        id: json['id'],
        question: json['question'],
        option1: json['option1'],
        option2: json['option2'],
        option3: json['option3'],
        correctAnswer: json['correctAnswer']);
  }
}