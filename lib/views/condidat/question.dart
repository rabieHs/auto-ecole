// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Question {
  final String image;
  final String questionText;

  final List<Answer> answersList;
  Question(
    this.image,
    this.questionText,
    this.answersList,
  );
}

class Test {
  final String duration;
  final List<Question> questions;
  Test({
    required this.duration,
    required this.questions,
  });
}

List<Test> tests = [
  Test(
    duration: "20 Min",
    questions: [
      Question(
        "assets/images/cc.png",
        "يمكن إستعمال هذا الهاتف?",
        [
          Answer("لقضاء حاجة شخصية", false),
          Answer("الإعلام طبيب", false),
          Answer("في حالة عطب", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "?تتغير جهة الوقوف كل يوم",
        [
          Answer(" بين الساعة الثامنة والثامنة و النصف ليلا", false),
          Answer(" بين الساعة الثامنة والنصف و الساعة التاسعة ليلا", true),
          Answer("بين الساعة التاسعة والتاسعة والنصف ليلا", false),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "يطبق تحديد السرعة ?",
        [
          Answer("فورا", true),
          Answer("على بعد 50 مترا", false),
          Answer("على بعد 100 مترا", false),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "تشير هذه العلامة إلى ?",
        [
          Answer("منع المجاوزة", false),
          Answer("نهاية منع المجاوزة", true),
          Answer("نهاية معبد ذو اتجاه واحد", false),
        ],
      ),
    ],
  ),
  Test(
    duration: "10 Min",
    questions:

        /// test num 2
        [
      Question(
        "assets/images/cc.png",
        "لتفادي الإبهار يمكنني?",
        [
          Answer("تشغيل أضواء الطريق", false),
          Answer("استعمال المنبهات الضوئية", true),
          Answer("تشغيل أضواء الضباب الأمامية", false),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "هذه العلامة تشير إلى ?",
        [
          Answer("محطة حافلات", true),
          Answer("مسلك مخصص للحافلات", false),
          Answer("مسلك مخصص للعربات البطيئة", false),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "في هذا المرتفع ?",
        [
          Answer("أسهل مرور السيارة الصفراء", false),
          Answer("أنحاز إلى اليمين و أمر", true),
          Answer("أنحاز إلى اليمين و أتوقف", false),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question4 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
    ],
  ),
  Test(
    duration: "15 Min",
    questions:

        /// test num 3
        [
      Question(
        "assets/images/cc.png",
        "question1 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question2 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question3 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question4 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
    ],
  ),
  Test(
    duration: "50 Min",
    questions: [
      Question(
        "assets/images/cc.png",
        "question1 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question2 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question3 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question4 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
    ],
  ),
  Test(
    duration: "18 Min",
    questions:

        /// test num 5
        [
      Question(
        "assets/images/cc.png",
        "question1 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question2 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question3 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question4 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
    ],
  ),
  Test(
    duration: "5 Min",
    questions:

        /// test num 6
        [
      Question(
        "assets/images/cc.png",
        "question1 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question2 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question3 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
      Question(
        "assets/images/cc.png",
        "question4 ?",
        [
          Answer("Reponse 1", false),
          Answer("Reponse 2", false),
          Answer("Reponse 3", true),
        ],
      ),
    ],
  )
];

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}
