import 'package:auto_ecole/views/welcome.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/widgets.dart';

import '../../core/constants.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _acceuilState();
}

class _acceuilState extends State<Acceuil> with SingleTickerProviderStateMixin {
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
        appBar: AppBar(
          title: Text(
            "data",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
            child: Container(
          //width: 500,
          height: 600,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: 10,
                      itemBuilder: (context, index, _index) => Image.asset(
                        "assets/images/image1.png",
                        fit: BoxFit.cover,
                      ),
                      options:
                          CarouselOptions(autoPlay: true, viewportFraction: 1),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.call),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "123456789",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "example123@gmail.com",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.location_pin),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "example rue123 Zrig gabes Tunie",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
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
                        fontWeight: FontWeight
                            .w600), // Couleur pour la troisième phrase
                  ),
                  Text(
                    "* un bureau pour le moniteure \n* un bureau pour le secrétaire\n* une salle de formation et une voiture\n",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight
                            .w600), // Couleur pour la troisième phrase
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WelcomeScreen()));
                      },
                      child: Container(
                          height: 45,
                          width: 200,
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
