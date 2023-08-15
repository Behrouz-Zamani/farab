import 'package:farab/models/videosAbModels.dart';
import 'package:farab/services/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';
import 'models/MoviesListes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'models/videoTajdidModels.dart';

class Tajdidvideo extends StatefulWidget {
  @override
  State<Tajdidvideo> createState() => _Tajdidvideo();
}

class _Tajdidvideo extends State<Tajdidvideo> {
  int selected = 0;
  bool isPlaying = false;
  late VideoPlayerController _controller;
  int _currentIndex = 0;
 
  void _playVideo({int index = 0, bool init = false}) {
    if (index < 0 || index >= videotajdidmodel.length) return;
    if (!init) {
      _controller.pause();
    }
    // setState(() {
    //   this._currentIndex = index;
    // });

    _controller =
        VideoPlayerController.network(videotajdidmodel[_currentIndex].url)
          ..addListener(() => setState(() {}))
          ..initialize().then((value) => _controller.play());
  }

  @override
  void initState() {
    super.initState();
    _playVideo(init: true);
  }
       List<MoviewsListes> movielsit = [];

  getResponse() {
    var url =
        "https://sasansafari.com/flutter/api.php?access_key=flutter123456";
    http.get(Uri.parse(url)).then((value) {
      print(value.statusCode);
      List jsonList = convert.jsonDecode(value.body);

      for (int i = 0; i < jsonList.length; i++) {
        setState(() {
          movielsit.add(MoviewsListes(
            id: jsonList[i]["id"],
            title: jsonList[i]["title"],
            price: jsonList[i]["price"],
            status: jsonList[i]["status"],
          ));
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {

      DioService().getmethod('https://sasansafari.com/flutter/api.php?access_key=flutter123456');
    
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
        title: const Text(
          'تلویزیون فراب - حوزه انرژی تجدید پذیر',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color.fromARGB(255, 184, 97, 37),
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
            Container(
              // color: const Color.fromARGB(255, 255, 255, 255),
              height: size.height / 1.8,
              child:Text("data")
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 254, 80, 0),
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
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
