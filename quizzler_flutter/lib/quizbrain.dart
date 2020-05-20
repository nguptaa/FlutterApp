import 'question.dart';

class QuizBrain {

  int _qstnnum = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true)
  ];

  void nextQstn(){
    if (_qstnnum < _questionBank.length-1) {
      _qstnnum++;
    }
  }

  String getQuestionText() {
    return _questionBank[_qstnnum].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_qstnnum].questionAnswer;
  }
}
