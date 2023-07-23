import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

class Naftvideo extends StatefulWidget{
    

  @override
  State<Naftvideo> createState() => _videoNaft();
}
class _videoNaft extends State<Naftvideo> {
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
      appBar: AppBar(title: Text('تلویزیون فراب - طرح های نفت، گاز و پتروشیمی'),backgroundColor: Color.fromARGB (255 , 155, 203, 235),),
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'بازسازی و نوسازی مجموعه سکوهای فروزان',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'احداث واحدهای شیرین سازی ایران',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
'احداث خط لوله انتقال نفت خام ترش سبز آب ری',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
'احداث واحد حلال نرمال هگزان پالایشگاه تهران',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'توسعه میدان نفتی پایدار غرب و آبان',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'عملیات اجرایی مجتمع متانول سیراف',
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
                        color: const Color.fromARGB(255 , 155, 203, 235),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'احداث واحدهای فرآیندی پالایشگاه بندرعباس',
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