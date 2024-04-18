import 'package:flutter/material.dart';

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
List<String> quizImages =[
  "https://images.unsplash.com/photo-1682687982185-531d09ec56fc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw3MXx8fGVufDB8fHx8fA%3D%3D",


];
List<String> testImages = [
  //test num1
  "https://images.unsplash.com/photo-1682687982185-531d09ec56fc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw3MXx8fGVufDB8fHx8fA%3D%3D",
  //test num2
  "https://plus.unsplash.com/premium_photo-1710385174405-df7e2060b1a2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4Mnx8fGVufDB8fHx8fA%3D%3D",
  //test num3
  "https://images.unsplash.com/photo-1710296363325-ae47dc7817d6?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1682687982185-531d09ec56fc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw3MXx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1710385174405-df7e2060b1a2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4Mnx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1710296363325-ae47dc7817d6?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MHx8fGVufDB8fHx8fA%3D%3D",
];

/// [[Questions],[Questions],[Questions]]
List<List<Question>> questions = [
  /// test num 1

  [
    Question(
      "question0 ?",
      [
        
     
      
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],

  /// test num 2
  [
    Question(
      "question100 ?",
      [
        Answer("Reponse 100", false),
        Answer("Reponse 200", false),
        Answer("Reponse 300", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],

  /// test num 3
  [
    Question(
      "question1 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],

  /// test num 4
  [
    Question(
      "question1 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],

  /// test num 5
  [
    Question(
      "question1 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],

  /// test num 6
  [
    Question(
      "question1 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
        Answer("Reponse 4", false),
      ],
    ),
  ],
];

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
