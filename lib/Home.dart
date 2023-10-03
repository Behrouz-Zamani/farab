import 'package:farab/MultimediaFarab.dart';
import 'package:farab/hoze_Farab.dart';
import 'package:farab/news_Farab.dart';
import 'package:farab/splash.dart';
import 'package:flutter/material.dart';

import 'Company_Farab.dart';
import 'about_Farab.dart';
import 'activity_farab.dart';
import 'movieList.dart';

void main() {
  runApp(const homeScrean());
}

// ignore: camel_case_types
class homeScrean extends StatelessWidget {
  const homeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: homeScreanPage(),
    );
  }
}

class homeScreanPage extends StatefulWidget {
  const homeScreanPage({
    Key? key,
  }) : super(key: key);

  @override
  State<homeScreanPage> createState() => _homeScreanPageState();
}

class _homeScreanPageState extends State<homeScreanPage> {
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
                  height: size.height / 1.04,
                  color: const Color.fromARGB(255, 33, 58, 148),
                  child: Image.asset("assets/images/sspmain.jpg"),
                ),
                Positioned(
                    top: size.height / 3.4,
                    left: 65,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                child: Container(
                                  width: 48,
                                  height:48,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(255, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset("assets/images/a5.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutFarab()));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(left: 36),
                              child: InkWell(
                                  child: const Text(
                                    "درباره فراب",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AboutFarab()));
                                  }),
                            ),
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 2.5,
                    left: 184,
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
                                          Color.fromARGB(255, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset("assets/images/a2.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const activity_farab()));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                  child: const Text(
                                    "حوزه های فعالیت",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const activity_farab()));
                                  }),
                            ),
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 1.5,
                    left: 185,
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
                                          Color.fromARGB(255, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset("assets/images/a6.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const multiMedia()));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                  child: const Text(
                                    "چند رسانه ایی",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const multiMedia()));
                                  }),
                            ),
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: size.height / 1.25,
                    left: 65,
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
                                          Color.fromARGB(255, 253, 250, 250)),
                                  //child:  Image.asset("assets/images/niro.jpg"),
                                  child: Image(
                                      image: Image.asset("assets/images/a3.png")
                                          .image),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const news_Farab()));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(left: 36.0),
                              child: InkWell(
                                  child: const Text(
                                    "نشریه فراب",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const news_Farab()));
                                  }),
                            ),
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
