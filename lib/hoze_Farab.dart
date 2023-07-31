// ignore_for_file: file_names

import 'package:farab/main.dart';
import 'package:farab/models/HozeModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(const hozeMain());
}

// ignore: camel_case_types
class hozeMain extends StatelessWidget {
  const hozeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const hoze_Farab(),
    );
  }
}

// ignore: camel_case_types
class hoze_Farab extends StatefulWidget {
  const hoze_Farab({
    Key? key,
  }) : super(key: key);

  @override
  State<hoze_Farab> createState() => _hozeFarabState();
}

// ignore: camel_case_types
class _hozeFarabState extends State<hoze_Farab> {
  double imageSize = 55;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 247, 247, 247),
            width: double.infinity,
            height: size.height / 1.7,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.1,
                  foregroundDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(65),
                        bottomRight: Radius.circular(65)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 38, 34, 94),
                        Colors.transparent,
                        Colors.transparent,
                        Color.fromARGB(255, 38, 34, 94),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0, 0.2, 1],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65)),
                      image: DecorationImage(
                        image: AssetImage(hozeModel[_selectedIndex].img),
                        fit: BoxFit.cover,
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(186, 255, 255, 255),
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const homeScrean()));
                            },
                            child: const Icon(CupertinoIcons.home)),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  right: 0,
                  top: 80,
                  child: SizedBox(
                    width: 90,
                    height: size.height / 2.3,
                    child: ListView.builder(
                      itemCount: hozeModel.length,
                      itemBuilder: (context, index) {
                        return imageItem(index);
                      },
                    ),
                  ),
                ),

//name

                Positioned(
                  bottom: 110,
                  left: 32,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        hozeModel[_selectedIndex].name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'vazir',
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  hozeModel[_selectedIndex].detail,
                  style: const TextStyle(
                      fontFamily: 'vazir',
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0),
                      height: 2.6),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          )),
        ],
      ),
    ));
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: _selectedIndex == index
                          ? Colors.yellow
                          : Colors.white,
                      width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    image: AssetImage(hozeModel[index].img),
                    fit: BoxFit.fill,
                  )),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
