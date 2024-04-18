import 'package:auto_ecole/core/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PanneauxDetails extends StatefulWidget {
  const PanneauxDetails({Key? key}) : super(key: key);

  @override
  State<PanneauxDetails> createState() => _CourDetailsState();
}

class _CourDetailsState extends State<PanneauxDetails> {
  final CarouselController controller = CarouselController();

  List<String> texts = [
    "text 1",
    "Text 2",
    "Text 3",
    "Text 4",
    "Text 5",
  ];
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
                itemCount: texts.length,
                itemBuilder: (context, index, _index) {
                  return Image.asset(
                    "assets/images/image1.png",
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
                        index > 0 ? index-- : index = texts.length - 1;
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(texts[index]),
                  InkWell(
                    onTap: () {
                      controller.nextPage();
                      setState(() {
                        index == texts.length - 1 ? index = 0 : index++;
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
