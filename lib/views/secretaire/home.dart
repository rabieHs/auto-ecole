import 'package:auto_ecole/views/secretaire/condidats.dart';
import 'package:auto_ecole/views/secretaire/contact.dart';
import 'package:auto_ecole/views/secretaire/reservation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeSec extends StatefulWidget {
  const HomeSec({super.key});

  @override
  State<HomeSec> createState() => _HomeSecState();
}

class _HomeSecState extends State<HomeSec> {
  List interfaces = const [condidats(), Contact(), reservation()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
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
                  "Condidats",
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
                  "Contact",
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
                  "Reservation",
                  style:
                      TextStyle(color: index == 2 ? Colors.pink : Colors.white),
                )),
          ],
        ),
      ),
      body: interfaces[index],
    );
  }
}
