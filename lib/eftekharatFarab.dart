import 'package:farab/about_Farab.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

import 'Home.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

    static const List<String> sampleImages = [
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1389-747x1024-747x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1390.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1393.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1394.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1395.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/Exporter-1396-719x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/06/016-683x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/07/1388.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2019/05/International_Consultants_and_Constructors-726x1024-726x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2023/05/45001-2023-732x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2023/05/hse-2023-732x1024.jpg',
    'https://www.farab.com/fa/wp-content/uploads/2023/05/14001-2023-734x1024.jpg',

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
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const AboutFarab()))),
  
  title: Text('گواهینامه ها و تقدیر نامه ها'),
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