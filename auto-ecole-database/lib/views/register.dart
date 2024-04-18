import 'package:auto_ecole/views/welcome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:auto_ecole/core/constants.dart';

import 'condidat/home.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  TextEditingController adresseController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                      "bienvenu à l'auto école de<mohamed saleh el hedoui>",
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
                    width: 400,
                    height: 400,
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
                        text: "créer un nouveau compte ",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 174, 45, 144)),
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: nomController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Nom",
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
                  controller: prenomController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Prénom",
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
                  controller: adresseController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "adresse",
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
                TextField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: " confirmer mot de passe",
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
                      final nom = nomController.text;
                      final prenom = prenomController.text;
                      final adresse = adresseController.text;
                      final password = passwordController.text;
                      final confirmPassword = confirmPasswordController.text;
                      final email = emailController.text;
                      if (nom.isEmpty ||
                          prenom.isEmpty ||
                          adresse.isEmpty ||
                          password.isEmpty ||
                          confirmPassword.isEmpty ||
                          email.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please fill all the fields"),
                          backgroundColor: Colors.red,
                        ));
                      } else {
                        if (password == confirmPassword) {
                          final result = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email, password: password);

                          if (result.user != null) {
                            final uid = result.user!.uid;
                            await FirebaseFirestore.instance
                                .collection('users')
                                .doc(uid)
                                .set({
                              'nom': nom,
                              'prenom': prenom,
                              'adresse': adresse,
                              'email': email,
                              'id': uid
                            });
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Erreur registre"),
                              backgroundColor: Colors.red,
                            ));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Please confirm your password"),
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
                        text: "vous avez un compte ?",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: "connexion",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => WelcomeScreen())),
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
