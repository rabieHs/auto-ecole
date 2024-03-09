import 'package:auto_ecole/views/acceuil.dart';
import 'package:auto_ecole/views/cours.dart';
import 'package:auto_ecole/views/home.dart';
import 'package:auto_ecole/views/register.dart';
import 'package:auto_ecole/views/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
