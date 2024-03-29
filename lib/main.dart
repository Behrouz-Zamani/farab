//import 'dart:js';

import 'package:farab/Gallery.dart';
import 'package:farab/MultimediaFarab.dart';
import 'package:farab/hoze_Farab.dart';
import 'package:farab/news_Farab.dart';
import 'package:farab/splash.dart';
import 'package:flutter/material.dart';

import 'Company_Farab.dart';

void main() {
  runApp(
    const myApp(),
  );
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const splashScreen(),
    );
  }
}

class MainCompany extends StatefulWidget {
  const MainCompany({
    Key? key,
  }) : super(key: key);

  @override
  State<MainCompany> createState() => _MainPageState();
}

class _MainPageState extends State<MainCompany> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 1.05,
                  color: const Color.fromARGB(255, 33, 58, 148),
                  child: Image.asset("assets/images/ssp.jpg"),
                ),
                Positioned(
                    top: size.height / 3.4,
                    left: 55,
                    child: Row(
                      children: [
                       
                            InkWell(
                              child:
 Image(
                                  image: Image.asset(
                                          "assets/images/information.png")
                                      .image),
                                   onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GalleryApp()));
                            }
                            ),
                      ],
                    )),
                Positioned(
                    top: size.height / 2.6,
                    left: 165,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(139, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset(
                                              "assets/images/puzzle-pieces.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const hoze_Farab()));
                                }),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "حوزه های فعالیت",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 1.8,
                    left: 195,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(139, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset(
                                              "assets/images/office.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Company_Frab()));
                                }),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "شرکت های تابعه",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 1.4,
                    left: 155,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(139, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset(
                                              "assets/images/multimedia.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const multiMedia()));
                                }),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "چند رسانه ایی",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 1.25,
                    left: 55,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(139, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset(
                                              "assets/images/newspaper.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const news_Farab()));
                                }),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "اخبار فراب",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
