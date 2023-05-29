// ignore_for_file: file_names

import 'package:farab/News_Detail.dart';
import 'package:farab/models/NewsModel.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomNews(NewsModel news, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Newspage(news)));
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
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(news.img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 4, 129),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              news.sherkat,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            news.onvan,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    ),
  );
}
