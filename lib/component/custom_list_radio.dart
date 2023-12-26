import 'package:flutter/material.dart';

Widget CustomListRadio({required String name, required String ?url, required String cover, OnTap}) {
  return InkWell(
    onTap: OnTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration:
                BoxDecoration(image: DecorationImage(image: NetworkImage(cover))),
          ),
          const SizedBox(width: 30.0),
          Column(
            children: [
              Text(name,style: const TextStyle(color: Colors.white,fontSize: 22),),
  
            ],
          )
        ],
      ),
    ),
  );
}
