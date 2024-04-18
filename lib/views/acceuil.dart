import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class acceuil extends StatefulWidget {
  const acceuil({Key? key}) : super(key: key);

  @override
  State<acceuil> createState() => _acceuilState();
}

class _acceuilState extends State<acceuil> with SingleTickerProviderStateMixin {
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
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();

    return Scaffold(
     body:Scaffold(
        
      body:  Center(
      child: Container(
        //width: 500,
        height: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {
                controller.previousPage();
              },
              child: Icon(
                Icons.arrow_back,
                size: 70,
              ),
            ),
            Container(
              child: CarouselSlider.builder(
                carouselController: controller,
                itemCount: 10,
                itemBuilder: (context, index, _index) => Image.asset(
                  "assets/images/image1.png",
                  fit: BoxFit.cover,
                ),
                options: CarouselOptions(autoPlay: true, viewportFraction: 1),
              ),
            ),
            InkWell(
              onTap: () {
                controller.nextPage();
              },
              child: Icon(
                Icons.arrow_forward,
                size: 70,
              ),
            )
          ],
        ),
      ),
      ),
      
    
            
      )  );
        
      
  }
}
