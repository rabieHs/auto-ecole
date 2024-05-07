import 'package:auto_ecole/views/condidat/cour_dtails_condidat.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class CoursCondidat extends StatefulWidget {
  const CoursCondidat({super.key});

  @override
  State<CoursCondidat> createState() => _CoursCondidatState();
}

class _CoursCondidatState extends State<CoursCondidat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemCount: courses.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          //// [5 maps]
          return Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoursDetailsCondidat(
                          pdfUrl: courses[index]["url"],
                        )));
              },
              child: Image.network(
                courses[index]["image"],
                fit: BoxFit.cover,
              ),
            ),
          );
          // navigation vers une autre interface
        },
      ),
    );

    //Scaffold(body: SfPdfViewer.asset("assets/images/testpdf.pdf"));
  }
}
