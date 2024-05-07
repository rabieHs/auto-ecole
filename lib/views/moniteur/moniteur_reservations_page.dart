import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core/constants.dart';

class MoniteurReservations extends StatefulWidget {
  final user;
  const MoniteurReservations({super.key, required this.user});

  @override
  State<MoniteurReservations> createState() => _ReservationCondidatState();
}

class _ReservationCondidatState extends State<MoniteurReservations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user["nom"]),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("reservation")
            .doc(widget.user["id"])
            .snapshots(),
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
            if (!resultat.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (!resultat.data!.exists) {
                return Container();
              }

              Map<String, dynamic> data =
                  resultat.data!.data() as Map<String, dynamic>;
              List reservationList = data["reservations"];

              return ListView.builder(
                  itemCount: reservationList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: reservationList[index]["type"] == "cour"
                              ? Colors.green
                              : Colors.orange,
                        ),
                        child: ListTile(
                          title: Text(reservationList[index]["type"]),
                          subtitle: Text(
                              "${reservationList[index]["date"]} -- ${reservationList[index]["time"]} "),
                          trailing: Icon(Icons.arrow_forward_ios),
                          leading: Icon(
                            Icons.account_circle_rounded,
                            size: 30,
                          ),
                          //contentPadding: EdgeInsets.all(20),
                          // dense: true,
                          // enabled: false,

                          iconColor: Colors.white,
                          textColor: Colors.white,
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
    );
  }
}
