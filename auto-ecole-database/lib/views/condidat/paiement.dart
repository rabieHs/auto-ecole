import 'package:auto_ecole/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_ecole/core/constants.dart';
class paiement extends StatefulWidget {
  const paiement({Key? key}) : super(key: key);

  @override
  State<paiement> createState() => _paiementState();
}

class _paiementState extends State<paiement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final _formKey =GlobalKey<_paiementState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController numerodecarteController = TextEditingController();
  TextEditingController codedecarteController = TextEditingController();
  
  
 

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
       body: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding:  EdgeInsets.all(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                
                  
                  
                  Image.asset(
                    "assets/images/cc.png",
                    width: 450,
                    height: 450,
                  ),
                  Text(
                    "Une carte bancaire est un moyen de paiement proposé aux détenteurs d'un compte bancaire. ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                 

                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            color: Color.fromARGB(255, 10, 39, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                SizedBox(
                  height: 50,
                ),
                TextField(
                  style: TextStyle(color: Color.fromARGB(255, 170, 163, 163)),
                  decoration: InputDecoration(
                    hintText: "Email",
                   
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "numerodecarte",
                   
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "code 4 numero",
                  
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
               
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                        height: 45,
                        width: 200,
                        child: Center(
                            child: Text(
                          "payer",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                
                  
                              
                        ]),
                  ),
                ),
              ],
            ),
          );
        
    
  }
}

    


      