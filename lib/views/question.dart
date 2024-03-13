class Question {
  final String questionText;
  final List<Answer> answersList;
  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "question1 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
      Answer("Reponse 4", false),
    ],
  ));
  list.add(Question(
    "question2 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
      Answer("Reponse 4", false),
    ],
  ));
  list.add(Question(
    "question3 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
      Answer("Reponse 4", false),
    ],
  ));
  list.add(Question(
    "question4 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
      Answer("Reponse 4", false),
    ],
  ));
  return list;
}
