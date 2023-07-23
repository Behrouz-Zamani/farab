import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

class Sakhtemanvideo extends StatefulWidget{
    

  @override
  State<Sakhtemanvideo> createState() => _videoSakhteman();
}
class _videoSakhteman extends State<Sakhtemanvideo> {
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
      appBar: AppBar(title: Text('تلویزیون فراب - پروژه های ساختمان'),backgroundColor: Color.fromARGB (255 , 159, 145, 42),),
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
                        color: const Color.fromARGB(255 , 159, 145, 42),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'تونل انتقال آب از سد آزاد به دشت قروه',
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
                        color: const Color.fromARGB(255 , 159, 145, 42),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'سد اردوباد(جمهوری آذربایجان)',
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
                        color: const Color.fromARGB(255 , 159, 145, 42),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
'عملیات ساختمانی نیروگاههای حرارتی(شیرکوه،دالاهو)',
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