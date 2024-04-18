// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/main.dart';
import 'package:auto_ecole/views/condidat/cour_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class cours extends StatefulWidget {
  const cours({Key? key}) : super(key: key);

  @override
  State<cours> createState() => _coursState();
}

class _coursState extends State<cours> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  get itemBuilder => null;

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemCount: courses.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          //// [5 maps]
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CourDetails(
                          map: courses[index],
                        )));
              },
              child: Image.network(
                courses[index]["course_image"],
                fit: BoxFit.cover,
              ),
            ),
          );
          // navigation vers une autre interface
        },
      ),
    );
  }
}
