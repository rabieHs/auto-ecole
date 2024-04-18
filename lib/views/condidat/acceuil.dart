import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/widgets.dart';

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
        body: Center(
            child: Container(
      //width: 500,
      height: 300,
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
              size: 40,
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
              size: 40,
            ),
          ),
          Column(
            children: [
              Text(
                "Resources humaines de l'auto école \n ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight:
                        FontWeight.w600), // Couleur pour la première phrase
              ),
              Text(
                "cette école est administrée par :\n * un gérant  :c'est le propriétaire de l'autoécole et le monitaire .\n * une secrétaire :la gestion des dossiers des condidat\n",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight:
                        FontWeight.w600), // Couleur pour la deuxième phrase
              ),
              Text(
                "Ressources matérielle de l'auto école\n",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight:
                        FontWeight.w600), // Couleur pour la troisième phrase
              ),
              Text(
                "* un bureau pour le moniteure \n* un bureau pour le secrétaire\n* une salle de formation et une voiture\n",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight:
                        FontWeight.w600), // Couleur pour la troisième phrase
              ),
            ],
          )
        ],
      ),
    )));
  }
}
