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

List<String> quizImages = [
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
      "يمكن إستعمال هذا الهاتف?",
      [
        Answer("لقضاء حاجة شخصية", false),
        Answer("الإعلام طبيب", false),
        Answer("في حالة عطب", true),
      ],
    ),
    Question(
      "?تتغير جهة الوقوف كل يوم",
      [
        Answer(" بين الساعة الثامنة والثامنة و النصف ليلا", false),
        Answer(" بين الساعة الثامنة والنصف و الساعة التاسعة ليلا", true),
        Answer("بين الساعة التاسعة والتاسعة والنصف ليلا", false),
      ],
    ),
    Question(
      "يطبق تحديد السرعة ?",
      [
        Answer("فورا", true),
        Answer("على بعد 50 مترا", false),
        Answer("على بعد 100 مترا", false),
      ],
    ),
    Question(
      "تشير هذه العلامة إلى ?",
      [
        Answer("منع المجاوزة", false),
        Answer("نهاية منع المجاوزة", true),
        Answer("نهاية معبد ذو اتجاه واحد", false),
      ],
    ),
  ],

  /// test num 2
  [
    Question(
      "لتفادي الإبهار يمكنني?",
      [
        Answer("تشغيل أضواء الطريق", false),
        Answer("استعمال المنبهات الضوئية", true),
        Answer("تشغيل أضواء الضباب الأمامية", false),
      ],
    ),
    Question(
      "هذه العلامة تشير إلى ?",
      [
        Answer("محطة حافلات", true),
        Answer("مسلك مخصص للحافلات", false),
        Answer("مسلك مخصص للعربات البطيئة", false),
      ],
    ),
    Question(
      "في هذا المرتفع ?",
      [
        Answer("أسهل مرور السيارة الصفراء", false),
        Answer("أنحاز إلى اليمين و أمر", true),
        Answer("أنحاز إلى اليمين و أتوقف", false),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
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
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
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
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
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
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
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
      ],
    ),
    Question(
      "question2 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question3 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
      ],
    ),
    Question(
      "question4 ?",
      [
        Answer("Reponse 1", false),
        Answer("Reponse 2", false),
        Answer("Reponse 3", true),
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
    ],
  ));
  list.add(Question(
    "question2 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
    ],
  ));
  list.add(Question(
    "question3 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
    ],
  ));
  list.add(Question(
    "question4 ?",
    [
      Answer("Reponse 1", false),
      Answer("Reponse 2", false),
      Answer("Reponse 3", true),
    ],
  ));
  return list;
}
