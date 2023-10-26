import 'package:farab/models/magazin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MagazinDetail extends StatelessWidget {
Magazine magazinsalo;
MagazinDetail(this.magazinsalo, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('نشریه سال${magazinsalo.sal}'),),
      body: Center(
        child:
        SfPdfViewer.network(
                magazinsalo.pdfurl,
              ),
      ),
    );
  }
}