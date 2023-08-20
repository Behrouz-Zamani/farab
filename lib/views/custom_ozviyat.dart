// ignore_for_file: file_names

import 'package:farab/models/ozviyat_model.dart';
import 'package:farab/views/detail_ozviyat.dart';
import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
Widget CustomOzviyat(OzviyatModel ozviyat, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HistoryPage(ozviyat)));
    },
    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ozviyat.pic), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          // Container(
          //   padding: const EdgeInsets.all(6.0),
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 16, 4, 129),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Text(
          //     ozviyat.sal,
          //     style: const TextStyle(color: Colors.white),
          //   ),
          // ),
          const SizedBox(
            height: 16.0,
          ),
          // Text(
          //   ozviyat.detail,
          //   style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          //   textDirection: TextDirection.rtl,
          //   textAlign: TextAlign.justify,
          // )
        ],
      ),
    ),
  );
}
