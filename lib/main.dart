import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/firebase_options.dart';
import 'package:auto_ecole/views/condidat/acceuil.dart';
import 'package:auto_ecole/views/condidat/home.dart';
import 'package:auto_ecole/views/moniteur/moniteur_page.dart';

import 'package:auto_ecole/views/register.dart';
import 'package:auto_ecole/views/secretaire/condidats.dart';
import 'package:auto_ecole/views/welcome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await FirebaseAuth.instance.signOut();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  checkUser() async {
    final id = FirebaseAuth.instance.currentUser!.uid;
    final user =
        await FirebaseFirestore.instance.collection("users").doc(id).get();
    isExist = user.exists;
    setState(() {});
  }

  bool isExist = false;
  @override
  void initState() {
    checkUser();
    // TODO: implement initState
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: 'Flutter Demo',
      home: //condition     ?   // si oui(action)   :  // si non (action)
          FirebaseAuth.instance.currentUser != null
              ? FirebaseAuth.instance.currentUser!.uid == AdminId
                  ? Home()
                  : FirebaseAuth.instance.currentUser!.uid == MoniteurId
                      ? MoniteurPage()
                      : Home()
              : Acceuil(),
      debugShowCheckedModeBanner: false,
    );
  }
}
