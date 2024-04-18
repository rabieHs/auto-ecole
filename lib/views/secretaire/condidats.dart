import 'dart:io';

import 'package:auto_ecole/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_ecole/core/constants.dart';
class condidats extends StatefulWidget {
  const condidats({super.key});

  @override
  State<condidats> createState() => _condidatsState();
}

class _condidatsState extends State<condidats>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.grey,
        padding: EdgeInsets.all(30),
child:  ListView(children: [
  Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:  Colors.indigo,
    ),
 child:  ListTile(title: Text('Nom'),
  subtitle: Text('payer ou non , date'),
  trailing:Icon (Icons.arrow_forward_ios) ,
  leading: Icon(Icons.account_circle_rounded,size: 30,),
  //contentPadding: EdgeInsets.all(20),
 // dense: true,
 // enabled: false,
  onTap: () {
    print('onTap pressed!');
  },
  onLongPress: () {
    print('onLong Pressed!');
  },
  iconColor: Colors.white,
  textColor: Colors.white,
  tileColor: Colors.indigo,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),),
  Container(
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:  Colors.indigo,
    ),
 child:  ListTile(title: Text('Nom'),
  subtitle: Text('payer ou non , date'),
  trailing:Icon (Icons.arrow_forward_ios) ,
  leading: Icon(Icons.account_circle_rounded,size: 30,),
  //contentPadding: EdgeInsets.all(20),
 // dense: true,
 // enabled: false,
  onTap: () {
    print('onTap pressed!');
  },
  onLongPress: () {
    print('onLong Pressed!');
  },
  iconColor: Colors.white,
  textColor: Colors.white,
  tileColor: Colors.indigo,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),),

],),
     ) );
  }
}