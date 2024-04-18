import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:path/path.dart';
import 'dart:html' as webFile;

class CoursDetailsCondidat extends StatefulWidget {
  String pdfUrl;
  CoursDetailsCondidat({super.key, required this.pdfUrl});

  @override
  State<CoursDetailsCondidat> createState() => _CoursDetailsCondidatState();
}

class _CoursDetailsCondidatState extends State<CoursDetailsCondidat> {
  PdfController? pdfController;

  @override
  void initState() {
    pdfController =
        PdfController(document: PdfDocument.openAsset(widget.pdfUrl));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(basename(widget.pdfUrl)),
          actions: [
            GestureDetector(
                onTap: () {
                  if (kIsWeb) {
                    final anchorElemnt =
                        webFile.AnchorElement(href: widget.pdfUrl)
                          ..setAttribute("download", basename(widget.pdfUrl))
                          ..click();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.download),
                ))
          ],
        ),
        body: PdfView(controller: pdfController!));
  }
}
