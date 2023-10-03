// ignore_for_file: file_names, camel_case_types

import 'package:farab/about_Farab.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';


void main() {
  runApp(const efteFarab());
}

class efteFarab extends StatefulWidget {
  const efteFarab({super.key});

  @override
  State<efteFarab> createState() => _efteFarab();
}

class _efteFarab extends State<efteFarab> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

    static const List<String> sampleImages = [
    'https://www.farab-co.ir/efte/1.jpg',
    'https://www.farab-co.ir/efte/2.jpg',
    'https://www.farab-co.ir/efte/3.jpg',
    'https://www.farab-co.ir/efte/4.jpg',
    'https://www.farab-co.ir/efte/5.jpg',
    'https://www.farab-co.ir/efte/6.jpg',
    'https://www.farab-co.ir/efte/7.jpg',
    'https://www.farab-co.ir/efte/8.jpg',
    'https://www.farab-co.ir/efte/9.jpg',
    'https://www.farab-co.ir/efte/10.jpg',
    'https://www.farab-co.ir/efte/11.jpg',
    'https://www.farab-co.ir/efte/12.jpg',
    'https://www.farab-co.ir/efte/13.jpg',
    'https://www.farab-co.ir/efte/14.jpg',
    'https://www.farab-co.ir/efte/15.jpg',
    'https://www.farab-co.ir/efte/16.jpg',
    'https://www.farab-co.ir/efte/17.jpg',
    'https://www.farab-co.ir/efte/18.jpg',
    'https://www.farab-co.ir/efte/19.jpg',
    'https://www.farab-co.ir/efte/20.jpg',
    'https://www.farab-co.ir/efte/21.jpg',
    'https://www.farab-co.ir/efte/22.jpg',
    'https://www.farab-co.ir/efte/23.jpg',
    'https://www.farab-co.ir/efte/24.jpg',
    'https://www.farab-co.ir/efte/25.jpg',
    'https://www.farab-co.ir/efte/25.jpg',
    'https://www.farab-co.ir/efte/26.jpg',
    'https://www.farab-co.ir/efte/27.jpg',
    'https://www.farab-co.ir/efte/28.jpg',
    'https://www.farab-co.ir/efte/29.jpg',
    

  ];

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const AboutFarab()))),
  
  title: const Text('افتخارات‌‌‌ فراب',style: TextStyle(fontFamily: 'vazir'),),
    centerTitle: true,

  ),
      body:
       SafeArea(
         child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 100,
                ),
                FanCarouselImageSlider(imagesLink: MyHomePage.sampleImages, isAssets: false,autoPlay: true,)
              ],
            ),
             ),
       ),
    );
  }
}