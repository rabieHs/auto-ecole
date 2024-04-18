import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:auto_ecole/core/constants.dart';

class coursdetails extends StatefulWidget {
  const coursdetails({Key? key}) : super(key: key);

  @override
  State<coursdetails> createState() => _coursdetailsState();
}

class _coursdetailsState extends State<coursdetails>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: Column(
        children: [
          CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, _index) {
                return Image.asset(
                  "assets/images/image1",
                );
              },
              options: CarouselOptions())
        ],
      ),
    ));
  }
}
