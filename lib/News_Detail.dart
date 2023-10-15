// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:farab/models/NewsModel.dart';
import 'package:flutter/material.dart';

class Newspage extends StatelessWidget {
  final NewsModel newse;
  const Newspage(this.newse, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(newse.onvan),
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

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
                    image: AssetImage(newse.img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: size.height / 1.9,
              padding: const EdgeInsets.all(6.0),
              child: SingleChildScrollView(
                  child: Text(
                newse.detail,
                textDirection: TextDirection.rtl,textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize:16,fontFamily: 'vazir',height: 2
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
