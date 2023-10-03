// ignore_for_file: file_names

import 'package:farab/views/detail_history.dart';
import 'package:flutter/material.dart';

import '../models/history_model.dart';

// ignore: non_constant_identifier_names
Widget CustomHistory(HistoryModel history, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HistoryPage(history)));
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
                    image: NetworkImage(history.pic), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 16, 4, 129),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              history.sal,
              style: const TextStyle(color: Colors.white,fontFamily: 'vazir'),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              history.detail,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize:16,fontFamily: 'vazir',height: 2),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    ),
  );
}
