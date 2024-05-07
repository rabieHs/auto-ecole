// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:auto_ecole/core/constants.dart';

class PanneauxDetailsCondidat extends StatefulWidget {
  final Map<String, dynamic> map;
  const PanneauxDetailsCondidat({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<PanneauxDetailsCondidat> createState() => _CourDetailsState();
}

class _CourDetailsState extends State<PanneauxDetailsCondidat> {
  final CarouselController controller = CarouselController();

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: CarouselSlider.builder(
                carouselController: controller,
                itemCount: widget.map["course_content"].length,
                itemBuilder: (context, index, _index) {
                  return Image.network(
                    widget.map["course_content"][index]["image"],
                  );
                },
                options: CarouselOptions(),
              ),
            ),
          ),
          Container(
            color: primaryColor,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.previousPage();
                      setState(() {
                        index > 0
                            ? index--
                            : index = widget.map["course_content"].length - 1;
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(widget.map["course_content"][index]["text"]),
                  InkWell(
                    onTap: () {
                      controller.nextPage();
                      setState(() {
                        index == widget.map["course_content"].length - 1
                            ? index = 0
                            : index++;
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
