
// ignore_for_file: camel_case_types

import 'package:farab/about_Farab.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';


void main() {
  runApp(const eftekharatFarab());
}

class eftekharatFarab extends StatefulWidget {
  const eftekharatFarab({super.key});

  @override
  State<eftekharatFarab> createState() => _eftekharatFarabState();
}

class _eftekharatFarabState extends State<eftekharatFarab> {
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
    'https://www.farab-co.ir/govahi/01.jpg',
    'https://www.farab-co.ir/govahi/02.jpg',
    'https://www.farab-co.ir/govahi/03.jpg',
    'https://www.farab-co.ir/govahi/04.jpg',
    'https://www.farab-co.ir/govahi/05.jpg',
    'https://www.farab-co.ir/govahi/06.jpg',
    'https://www.farab-co.ir/govahi/07.jpg',
    'https://www.farab-co.ir/govahi/08.jpg',
    'https://www.farab-co.ir/govahi/09.jpg',
    'https://www.farab-co.ir/govahi/10.jpg',
    'https://www.farab-co.ir/govahi/11.jpg',
    'https://www.farab-co.ir/govahi/12.jpg',
    'https://www.farab-co.ir/govahi/13.jpg',
    'https://www.farab-co.ir/govahi/14.jpg',
    'https://www.farab-co.ir/govahi/15.jpg',
    'https://www.farab-co.ir/govahi/16.jpg',
    'https://www.farab-co.ir/govahi/17.jpg',
    'https://www.farab-co.ir/govahi/18.jpg',
    'https://www.farab-co.ir/govahi/19.jpg',
    'https://www.farab-co.ir/govahi/20.jpg',
    'https://www.farab-co.ir/govahi/21.jpg',
    'https://www.farab-co.ir/govahi/22.jpg',
    'https://www.farab-co.ir/govahi/23.jpg',
    'https://www.farab-co.ir/govahi/24.jpg',
    'https://www.farab-co.ir/govahi/25.jpg',
    'https://www.farab-co.ir/govahi/25.jpg',
    'https://www.farab-co.ir/govahi/26.jpg',
    'https://www.farab-co.ir/govahi/27.jpg',
    'https://www.farab-co.ir/govahi/28.jpg',
    'https://www.farab-co.ir/govahi/29.jpg',
    'https://www.farab-co.ir/govahi/30.jpg',
    'https://www.farab-co.ir/govahi/31.jpg',
    'https://www.farab-co.ir/govahi/32.jpg',

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
  
  title: const Text('گواهینامه‌ها',style: TextStyle(fontFamily: 'vazir'),),
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