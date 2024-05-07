import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core/constants.dart';

class ReservationCondidat extends StatefulWidget {
  final user;
  const ReservationCondidat({super.key, required this.user});

  @override
  State<ReservationCondidat> createState() => _ReservationCondidatState();
}

class _ReservationCondidatState extends State<ReservationCondidat> {
  String? selectedValue;
  String? modifierSelectedValue;
  String date = "";
  String temp = "";
  final dateController = TextEditingController();
  final tempsController = TextEditingController();
  final modiferDateController = TextEditingController();
  final modifierTempsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: dateController,
                              onTap: () async {
                                DateTime? _date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2050));
                                if (_date != null) {
                                  setState(() {
                                    date =
                                        "${_date.day}-${_date.month}-${_date.year}  ";
                                    dateController.text = date;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Date",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: tempsController,
                              onTap: () async {
                                final _time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (_time != null) {
                                  setState(() {
                                    temp = "${_time.hour}:${_time.minute} ";
                                    tempsController.text = temp;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Temps",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  hintText: "Type",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("examen"),
                                    value: "examen",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("cour"),
                                    value: "cour",
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                }),
                          ),
                          Center(
                            child: MaterialButton(
                              onPressed: () async {
                                if (dateController.text.isEmpty ||
                                    tempsController.text.isEmpty ||
                                    selectedValue == null) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please fill all the fields"),
                                    backgroundColor: Colors.red,
                                  ));
                                }

                                final resultat = await FirebaseFirestore
                                    .instance
                                    .collection("reservation")
                                    .doc(widget.user["id"])
                                    .get();

                                if (resultat.exists) {
                                  await FirebaseFirestore.instance
                                      .collection("reservation")
                                      .doc(widget.user["id"])
                                      .update({
                                    "reservations": FieldValue.arrayUnion([
                                      {
                                        "date": dateController.text,
                                        "time": tempsController.text,
                                        "type": selectedValue
                                      }
                                    ])
                                  }).whenComplete(() => Navigator.pop(context));
                                } else {
                                  await FirebaseFirestore.instance
                                      .collection("reservation")
                                      .doc(widget.user["id"])
                                      .set({
                                    "user_id": widget.user["id"],
                                    "reservations": [
                                      {
                                        "date": dateController.text,
                                        "time": tempsController.text,
                                        "type": selectedValue
                                      }
                                    ]
                                  }).whenComplete(() => Navigator.pop(context));
                                }
                              },
                              child: Container(
                                  height: 45,
                                  width: 200,
                                  child: Center(
                                      child: Text(
                                    "Ajouter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
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
                          onTap: () {
                            modiferDateController.text =
                                reservationList[index]["date"];
                            modifierTempsController.text =
                                reservationList[index]["time"];
                            modifierSelectedValue =
                                reservationList[index]["type"];

                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                controller:
                                                    modiferDateController,
                                                onTap: () async {
                                                  DateTime? _date =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime.now(),
                                                          lastDate:
                                                              DateTime(2050));
                                                  if (_date != null) {
                                                    setState(() {
                                                      date = modiferDateController
                                                              .text =
                                                          "${_date.day}-${_date.month}-${_date.year}  ";
                                                    });
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  hintText: "Date",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                controller:
                                                    modifierTempsController,
                                                onTap: () async {
                                                  final _time =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                        TimeOfDay.now(),
                                                  );

                                                  if (_time != null) {
                                                    setState(() {
                                                      modifierTempsController
                                                              .text =
                                                          "${_time.hour}:${_time.minute} ";
                                                    });
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  hintText: "Temps",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: DropdownButtonFormField(
                                                  value: modifierSelectedValue,
                                                  decoration: InputDecoration(
                                                    hintText: "Type",
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  ),
                                                  items: [
                                                    DropdownMenuItem(
                                                      child: Text("examen"),
                                                      value: "examen",
                                                    ),
                                                    DropdownMenuItem(
                                                      child: Text("cour"),
                                                      value: "cour",
                                                    ),
                                                  ],
                                                  onChanged: (value) {
                                                    setState(() {
                                                      modifierSelectedValue =
                                                          value;
                                                    });
                                                  }),
                                            ),
                                            Center(
                                              child: MaterialButton(
                                                onPressed: () async {
                                                  Map<String, dynamic>
                                                      updatedReservation = {
                                                    "date":
                                                        modiferDateController
                                                            .text,
                                                    "time":
                                                        modifierTempsController
                                                            .text,
                                                    "type":
                                                        modifierSelectedValue
                                                  };

                                                  List<dynamic>
                                                      updatedReservationList =
                                                      List.from(
                                                          reservationList);
                                                  updatedReservationList
                                                      .removeAt(index);
                                                  updatedReservationList
                                                      .add(updatedReservation);

                                                  print(updatedReservationList);

                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection("reservation")
                                                      .doc(widget.user["id"])
                                                      .update({
                                                    "reservations":
                                                        updatedReservationList
                                                  }).whenComplete(() =>
                                                          Navigator.pop(
                                                              context));
                                                },
                                                child: Container(
                                                    height: 45,
                                                    width: 200,
                                                    child: Center(
                                                        child: Text(
                                                      "Modifier",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ))),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                color: primaryColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Center(
                                              child: MaterialButton(
                                                onPressed: () async {
                                                  List<dynamic>
                                                      updatedReservationList =
                                                      List.from(
                                                          reservationList);
                                                  updatedReservationList
                                                      .removeAt(index);
                                                  final resultat =
                                                      await FirebaseFirestore
                                                          .instance
                                                          .collection(
                                                              "reservation")
                                                          .doc(
                                                              widget.user["id"])
                                                          .update({
                                                    "reservations":
                                                        updatedReservationList
                                                  });
                                                },
                                                child: Container(
                                                    height: 45,
                                                    width: 200,
                                                    child: Center(
                                                        child: Text(
                                                      "Supprimer",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ))),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                color: primaryColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                          },

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
