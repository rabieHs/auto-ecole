// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/main.dart';
import 'package:auto_ecole/views/condidat/panneaux_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class PanneauxCondidat extends StatefulWidget {
  const PanneauxCondidat({Key? key}) : super(key: key);

  @override
  State<PanneauxCondidat> createState() => _coursState();
}

class _coursState extends State<PanneauxCondidat>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Color.fromARGB(255, 191, 173, 165),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemCount: courses.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          //// [5 maps]
          return Padding(
            padding: const EdgeInsets.all(90),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PanneauxDetailsCondidat(
                          map: panneaux[index],
                        )));
              },
              child: Image.network(
                panneaux[index]["course_image"],
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
