import 'package:auto_ecole/views/acceuil.dart';
import 'package:auto_ecole/views/condidat/panneaux.dart';
import 'package:auto_ecole/views/cours.dart';
import 'package:auto_ecole/views/panneaux.dart';
import 'package:auto_ecole/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../test.dart';
import 'paiement.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List interfaces = [
    acceuil(),
    Panneaux(),
    Cours(),
    test(),
    paiement(),
    profile(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text(
                  "Acceuil",
                  style:
                      TextStyle(color: index == 0 ? Colors.pink : Colors.white),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(
                  "Panneaux",
                  style:
                      TextStyle(color: index == 1 ? Colors.pink : Colors.white),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Text(
                  "Cours",
                  style:
                      TextStyle(color: index == 2 ? Colors.pink : Colors.white),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Text(
                  "test",
                  style:
                      TextStyle(color: index == 3 ? Colors.pink : Colors.white),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Text(
                  "paiement",
                  style:
                      TextStyle(color: index == 4 ? Colors.pink : Colors.white),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Text(
                  "profile",
                  style:
                      TextStyle(color: index == 5 ? Colors.pink : Colors.white),
                )),
          ],
        ),
      ),
      body: interfaces[index],
    );
  }
}
