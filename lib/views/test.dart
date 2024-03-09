import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/views/quiz.dart';
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
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Quiz()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 94, 172),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 50),
                      height: 100,
                      width: 400,
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                    fit: BoxFit.cover)),
                          ),
                          Center(child: Text("اختبار رقم 1"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
