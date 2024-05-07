import 'dart:io';

import 'package:auto_ecole/main.dart';
import 'package:auto_ecole/views/secretaire/reservations_condidat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    print(FirebaseAuth.instance.currentUser!.uid);

    return Scaffold(
      appBar: AppBar(
        title: Text("Condidats"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("users").snapshots(),
        builder: (context, resultat) {
          if (resultat.hasError) {
            return Center(
              child: Text("Erreur"),
            );
          }
          if (resultat.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (resultat.data!.docs.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Map> usersList =
                  resultat.data!.docs.map((doc) => doc.data()).toList();
              return ListView.builder(
                  itemCount: usersList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.indigo,
                        ),
                        child: ListTile(
                          title: Text(usersList[index]["nom"]),
                          subtitle: Text('payer ou non , date'),
                          trailing: Icon(Icons.arrow_forward_ios),
                          leading: Icon(
                            Icons.account_circle_rounded,
                            size: 30,
                          ),
                          //contentPadding: EdgeInsets.all(20),
                          // dense: true,
                          // enabled: false,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text(usersList[index]["nom"]),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Email: ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                usersList[index]["email"],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Telephone: ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                usersList[index]["telephone"],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      actions: [
                                        MaterialButton(
                                            child: Text("consulter"),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ReservationCondidat(
                                                              user: usersList[
                                                                  index])));
                                            }),
                                        MaterialButton(
                                          onPressed: () async {
                                            await FirebaseFirestore.instance
                                                .collection("users")
                                                .doc(usersList[index]["id"])
                                                .delete()
                                                .then((value) =>
                                                    Navigator.pop(context));
                                          },
                                          child: Text(
                                            "supprimer",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        )
                                      ],
                                    ));
                          },

                          iconColor: Colors.white,
                          textColor: Colors.white,
                          tileColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    );
                  });
            }
          }
        },
      ),

      /*ListView(
            children: [
             
              
            ],
          ),
        )*/
    );
  }
}
