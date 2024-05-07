import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/views/condidat/acceuil.dart';
import 'package:auto_ecole/views/moniteur/moniteur_page.dart';
import 'package:auto_ecole/views/register.dart';
import 'package:auto_ecole/views/secretaire/condidats.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../controllers/responseive.dart';
import 'condidat/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    child: Text(
                      "Empowering Safe Drivers, One Lesson at a Time.",
                      style: TextStyle(
                          fontSize: 40,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "L’auto-école  « MOHAMED SALEHEL HEDOUI » a été crée en octobre 2009 ,elle se suite àRue« FARHAT HACHED » PLACE GABES .CETTE école permet d’assurerles cours  de code de la route et lescours des conduit. ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    "assets/images/image1.png",
                    width: 450,
                    height: 450,
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            color: primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: RichText(
                    text: TextSpan(
                        text: "Login To Your",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Account",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: secondaryColor),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: secondaryColor,
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
                  obscureText: true,
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: secondaryColor,
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
                    onPressed: () async {
                      final email = emailController.text;
                      final password = passwordController.text;
                      if (email.isEmpty || password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please fill all the fields"),
                          backgroundColor: Colors.red,
                        ));
                      } else {
                        final resultat = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);
                        final user = await FirebaseFirestore.instance
                            .collection("users")
                            .doc(resultat.user!.uid)
                            .get();
                        bool isExist = user.exists;

                        if (resultat.user != null) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("success login"),
                            backgroundColor: Colors.green,
                          ));
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      resultat.user!.uid == AdminId
                                          ? condidats()
                                          : resultat.user!.uid == MoniteurId
                                              ? MoniteurPage()
                                              : isExist
                                                  ? Home()
                                                  : Acceuil()));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Error login"),
                            backgroundColor: Colors.red,
                          ));
                        }
                      }
                    },
                    child: Container(
                        height: 45,
                        width: 200,
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ))),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: "You Don't have An Acccount? ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Register",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen())),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
