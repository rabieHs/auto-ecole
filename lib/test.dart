import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/views/condidat/question.dart';
import 'package:auto_ecole/views/condidat/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: tests.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => QuizScreen(
                                  questionList: tests[index],
                                )));
                      },
                      child: ListTile(
                        leading: Icon(Icons.car_rental),
                        title: Text("اختبار رقم ${index + 1}"),
                        subtitle: Text(tests[index].duration),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
