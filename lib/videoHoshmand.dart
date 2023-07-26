
import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

class Hoshmandvideo extends StatefulWidget{
    

  @override
  State<Hoshmandvideo> createState() => _Hoshmandvideo();
}
class _Hoshmandvideo extends State<Hoshmandvideo> {
   int selected = 0;
  List<int> loc = [0, 0, 0, 0, 0, 0, 0];
  late VideoPlayerController _controller;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;

  bool isPlaying = true;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-message-of-dr-vakili.mp4')
      ..initialize().then((_) {
        setState(() {
         _controller.play();
        });
      });

    _controller2 = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/interview-with-dr-azimi.mp4')
      ..initialize().then((_) {
        setState(() {
         _controller2.play();
        });
      });

    _controller3 = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-daf.mp4')
      ..initialize().then((_) {
        setState(() {
         _controller3.play();
        });
      });
  }
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
      appBar: AppBar(title: Text('تلویزیون فراب - پروژه های هوشمند سازی'),backgroundColor: Color.fromARGB (255 , 159, 145, 42),),
           body: SingleChildScrollView(
             child: Column(
                   children: [
                                 Container(
                  width: double.infinity,
                  height: size.height /3,
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mockup.png"),fit: BoxFit.cover,)),
                
                child: Container(
                   margin: EdgeInsets.only(left: 16.0,top: 10.0,right: 16.0,bottom: 40.0),
                  child: SizedBox(
                     width: double.infinity,
                    height: 80,
                  
                    
                    // color: Colors.amber,
                    child: _controller.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: selected == 0
                                ? VideoPlayer(_controller)
                                : selected == 1
                                    ? VideoPlayer(_controller2)
                                    : selected == 2
                                        ? VideoPlayer(_controller3)
                                        : null,
                          )
                        : Container(),
                  ),
                ),
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
                              'سامانه هوشمند اندازه گیری و مدیریت انرژی ',
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
                              'احداث نیروگاه 10 مگاواتی خورشیدی زاهدان',
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
'احداث نیروگاه 10 مگاواتی خورشیدی اشکذر',
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
' نیروگاه زیست توده (پسماند شهری) به روش هاضم',
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