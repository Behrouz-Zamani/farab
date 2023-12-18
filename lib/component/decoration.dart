import 'package:flutter/material.dart';

class MyDecorations 
{
 MyDecorations._();

  static BoxDecoration mainGradient = const BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(16)),
       gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 119, 63, 231),
              Color.fromARGB(255, 43, 24, 146),

            ], // Gradient from https://learnui.design/tools/gradient-generator.html
           // tileMode: TileMode.mirror,
       )
  );
}