
import 'package:farab/radio_Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class radioFarab extends StatefulWidget {
  const radioFarab({super.key});

  @override
  State<radioFarab> createState() => _radioFarabState();
}

class _radioFarabState extends State<radioFarab> {
  @override
  Widget build(BuildContext context) {
    [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    [
      const Locale('fa'), // English
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('رادیو فراب'),
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

      ),
      body: SafeArea(
          child: Column(
        // color:GradientRotation(radians)
        children: [
          Container(
            width: double.infinity,
            height: size.height / 2.9,
            color: Colors.green[100],
            child: const Image(image: AssetImage('assets/images/radiofarab.jpg')),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int position) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,8,0,0),
                        child: Container(
                          width: double.infinity,
                          height: 72,
                          decoration: BoxDecoration(boxShadow: const <BoxShadow>[
                            BoxShadow(blurRadius: 1.0, color: Colors.blueGrey)
                          ],
                      
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                InkWell(
                                  child: const Icon(
                                    Icons.play_circle_fill_rounded,
                                    color: Color.fromARGB(255, 28, 7, 104),
                                    size: 32.0,
                                  ),
                                  onTap: () {
                                     Navigator.push (
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const radio_Detail()));
                                  },
                                ),
                                const Text(
                                'دف نوازی همکاران در فراب',
                                style: TextStyle(
                                    color:Color.fromARGB(255, 28, 7, 104),
                                    fontFamily: 'vazir',
                                    fontSize: 14.0),
                              ),
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    image: DecorationImage(
                                        image: Image.asset(
                                      'assets/images/niro.jpg',
                                      fit: BoxFit.cover,
                                    ).image)),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
