import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

class Abvideo extends StatefulWidget{
    

  @override
  State<Abvideo> createState() => _videoAb();
}
class _videoAb extends State<Abvideo> {
    @override
  Widget build(BuildContext context) {
    localizationsDelegates:
    [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    supportedLocales:
    [
      Locale('fa'), // English
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text('تلویزیون فراب - حوزه آب'),backgroundColor: Color.fromARGB (255  , 0, 199, 177),),
           body: SingleChildScrollView(
             child: Column(
                   children: [
                     Container(
              width: double.infinity,
              height: size.height / 3,
              color: Colors.amber,
                     ),
                     Column(
              children: [
               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیزوگاه کارون 1 - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                 // await _player.setAsset('assets/images/mahboob.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه کرخه - 400 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
'نیروگاه مسجد سلیمان - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
'نیروگاه کارون 3 - 2000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه کوهرنگ - 39.3 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'توسعه نیروگاه مسجد سلیمان - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه کارون 4 - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه شهید رجایی - 13.5 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه لوراک - 47 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه گتوند علیا - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه تانا(کشور کنیا) - 25 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه تلمبه ذخیره ای سیاه بیشه - 1000 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه سنگ توده2(کشور تاجیکستان) - 220 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 199, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'نیروگاه سیمره - 480 مگاوات',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () async {
                                  //await _player.setAsset('assets/images/dafnavazi.mp3');
                                  //_player.play();
                                },
                                icon: const Icon(Icons.play_circle_outline),
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
               
              ],
                     ),
                   ],
                 ),
           ),
    );
}}