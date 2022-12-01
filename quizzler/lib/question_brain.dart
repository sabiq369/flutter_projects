import 'questions.dart';

class QuestionBrain {
  int _questionNumber = 0;
  String getQuestion() {
    return _countryQuestions[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _countryQuestions[_questionNumber].questionAnswer;
  }

  int getLength() {
    return _countryQuestions.length;
  }

  void nextQuestion() {
    if (_questionNumber < _countryQuestions.length - 1) {
      _questionNumber++;
      print(_questionNumber);
      print(_countryQuestions.length);
    }
  }

  List<QuestionAnswer> _countryQuestions = [
    QuestionAnswer('Madagascar is a country island', true),
    QuestionAnswer('French fries was first invented in France', false),
    QuestionAnswer(
        'The only fruit with seeds on the outside is strawberry', true),
  ];

  List<QuestionAnswer> sportsQuestions = [
    QuestionAnswer(
        'India won Thomas Cup on May 15, 2022, by defeating Indonesia', true),
    QuestionAnswer(
      'Only three countries have won the Women’s Rugby World Cup- New Zealand, England, and USA',
      true,
    ),
    QuestionAnswer(
        'The term ‘Dolphin Kick’ is associated with golf game', false),
  ];
}
