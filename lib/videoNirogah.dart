import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'models/videoHararatiModels.dart';

class Nirogahvideo extends StatefulWidget {
  @override
  State<Nirogahvideo> createState() => _Nirogahvideo();
}

class _Nirogahvideo extends State<Nirogahvideo> {
  int selected = 0;
  bool isPlaying = true;
  late VideoPlayerController _controller;
  int _currentIndex = 0;

  void _playVideo({int index = 0, bool init = false}) {
    if (index < 0 || index >= videoharartimodel.length) return;
    if (!init) {
      _controller.pause();
    }
    setState(() {
      this._currentIndex = index;
    });

    _controller = VideoPlayerController.network(videoharartimodel[_currentIndex].url)
      ..addListener(() => setState(() {}))
      ..initialize().then((value) => _controller.play());
  }

  @override
  void initState() {
    super.initState();
    _playVideo(init: true);
  }

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
        title: const Text('تلویزیون فراب - حوزه نیروگاه حرارتی',style: TextStyle(fontSize: 14),),
        backgroundColor: const Color.fromARGB(255, 255, 156, 26),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Color.fromARGB(255, 100, 102, 105),
                width: double.infinity,
                height: size.height / 3.2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/mockup.png"),
                  fit: BoxFit.cover,
                )),
                child: Container(
                    child: _controller.value.isInitialized
                        ? Column(
                            children: <Widget>[
                              SizedBox(
                                height: 200,
                                child: VideoPlayer(_controller),
                              ),
                            ],
                          )
                        : Container()),
              ),
            ),
       
            SizedBox(
             // color: const Color.fromARGB(255, 255, 255, 255),
              height: size.height / 1.8,
              child: ListView.builder(
                itemCount: videoharartimodel.length,
                itemBuilder: (context, indext) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 16.0, bottom: 8.0, right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 255, 156, 26),
                      ),
                      height: 64,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => _playVideo(index: indext),
                                  child: Text(
                                    videoharartimodel[indext].name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'vazir',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
            
      ),
    //    floatingActionButton: FloatingActionButton(
    //    backgroundColor: Color.fromARGB(255, 254, 80, 0),
    //    onPressed: () {
    //      setState(() {
    //        _controller.value.isPlaying
    //            ? _controller.pause()
    //            : _controller.play();

    //      });
    //    },
    //    child: Icon(
    //       _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
    //    ),
    //  ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  changevideo() {
    setState(() {
      selected = 1;
    });
  }

  stop() {
    setState(() {});
  }
}
