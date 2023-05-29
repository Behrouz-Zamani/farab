// ignore_for_file: file_names

import 'package:farab/Gallery.dart';
import 'package:farab/movieList.dart';
import 'package:farab/radio_Farab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(multiMedia());
}

class multiMedia extends StatelessWidget {
  const multiMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const multiMediaF(),
    );
  }
}

class multiMediaF extends StatefulWidget {
  const multiMediaF({
    Key? key,
  }) : super(key: key);

  @override
  State<multiMediaF> createState() => _multiMediaF();
}

class _multiMediaF extends State<multiMediaF> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: size.height / 1.7,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/MultiR.jpg",
                  fit: BoxFit.cover,
                )),
            Expanded(
                child: Container(
              color: Colors.blueAccent,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const GalleryApp()))
                                  },
                              child: Image.asset("assets/images/gallery.png",
                                  fit: BoxFit.fill)),
                          Text(
                            "گالری تصاویر",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Column(
                        children: [
                          InkWell(
                                                          onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 radioFarab()))
                                  },
                            child: Image.asset("assets/images/radioR.png",
                                fit: BoxFit.fill),
                          ),
                          Text(
                            "رادیو فراب",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainMoview()))
                                  },
                              child: Image.asset("assets/images/tvR.png",
                                  fit: BoxFit.fill)),
                          Text(
                            "تلویزیون فراب",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
