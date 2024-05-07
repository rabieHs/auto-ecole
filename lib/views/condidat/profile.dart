import 'package:auto_ecole/views/condidat/acceuil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  getUser() async {
    final resultat = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    if (resultat.data() != null) {
      setState(() {
        user = resultat.data()!;
      });
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Map<String, dynamic>? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(children: [
            Center(
              child: Stack(children: [
                Container(
                  width: 130,
                  height: 130,
                  child: Image.asset('assets/images/user.png'),
                )
              ]),
            ),
            buildTextField(
                "full name", user != null ? user!["nom"] : "", false),
            buildTextField("Email", user != null ? user!["email"] : "", false),
            buildTextField(
                "telephone", user != null ? user!["telephone"] : "", false),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut().whenComplete(() =>
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Acceuil())));
                  },
                  child: Text(
                    "Déconnexion",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.blue,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildTextField(
      String LabelText, String placeholder, bool isPasswordTextField) {
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: TextField(
            obscureText: isPasswordTextField ? true : false,
            decoration: InputDecoration(
              suffixIcon: isPasswordTextField
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    )
                  : null,
              contentPadding: EdgeInsets.only(bottom: 0.5),
              labelText: LabelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )));
  }
}
