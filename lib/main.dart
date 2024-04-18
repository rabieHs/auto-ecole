import 'package:auto_ecole/core/constants.dart';
import 'package:auto_ecole/firebase_options.dart';
import 'package:auto_ecole/views/condidat/home.dart';

import 'package:auto_ecole/views/register.dart';
import 'package:auto_ecole/views/secretaire/home.dart';
import 'package:auto_ecole/views/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await FirebaseAuth.instance.signOut();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: //condition     ?   // si oui(action)   :  // si non (action)
          FirebaseAuth.instance.currentUser != null
              ? FirebaseAuth.instance.currentUser!.uid == AdminId
                  ?HomeSec()
                  :Home()
                 
              : RegisterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
