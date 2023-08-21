// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:farab/models/project_model.dart';
import 'package:flutter/material.dart';

import '../models/ozviyat_model.dart';

class HistoryPage extends StatelessWidget {
  final ProjectModel project;
  const HistoryPage(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(project.img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            // Container(
            //   height: size.height / 1.9,
            //   padding: const EdgeInsets.all(6.0),
            //   child: SingleChildScrollView(
            //   //     child: Text(
            //   //   ozviyat.detail,
            //   //   textDirection: TextDirection.rtl,
            //   //   textAlign: TextAlign.justify,
            //   //   style: const TextStyle(
            //   //     color: Color.fromARGB(255, 0, 0, 0),
            //   //     fontSize: 16,
            //   //     height: 2.6
            //   //   ),
            //   // )),
            // ),
          ],
        ),
      ),
    );
  }
}
