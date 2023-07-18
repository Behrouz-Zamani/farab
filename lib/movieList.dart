// ignore_for_file: file_names

import 'package:farab/videoNirogah.dart';

import 'videoAb.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

void main() {
  runApp(const mainvideo());
}

// ignore: camel_case_types
class mainvideo extends StatelessWidget {
  const mainvideo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // English
      ],
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const MainMoview(),
    );
  }
}

class MainMoview extends StatefulWidget {
  const MainMoview({
    Key? key,
  }) : super(key: key);

  @override
  State<MainMoview> createState() => _MainMoview();
}

class _MainMoview extends State<MainMoview> {
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
        //  _controller.play();
        });
      });

    _controller2 = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/interview-with-dr-azimi.mp4')
      ..initialize().then((_) {
        setState(() {
         // _controller2.play();
        });
      });

    _controller3 = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-daf.mp4')
      ..initialize().then((_) {
        setState(() {
         // _controller3.play();
        });
      });
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 0, 88, 164),
            child: const Center(
                child: Text(
              "تلویزیون فراب",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height / 2.3,
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
            SizedBox(
                width: double.infinity,

                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                          
                            child: Image.asset(
                              "assets/images/niro.jpg",
                              fit: BoxFit.cover,
                            ),
                           onTap: () => {                                Navigator.push(
                                  context,
                                    MaterialPageRoute(
                                        builder: (context) => Nirogahvideo()))
                                        }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/ab.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {                                Navigator.push(
                                  context,
                                    MaterialPageRoute(
                                        builder: (context) => Abvideo()))
                                        }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/sakhteman.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {}),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/reil.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {}),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/hoshmand.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {}),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/gaz.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {}),
                      ),
                      // ignore: avoid_unnecessary_containers

                      Container(
                        child: InkWell(),
                      ),

                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/bahrebardari.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () => {}),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(),
                      ),

                      // ignore: avoid_unnecessary_containers
                    ],
                  ),
                ))
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 254, 80, 0),
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();

            _controller2.value.isPlaying
                ? _controller2.pause()
                : _controller2.play();

            _controller3.value.isPlaying
                ? _controller3.pause()
                : _controller3.play();
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
    super.dispose();
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
  }

  changevideo() {
    setState(() {

      selected = 1;
    });
  }

  stop() {
    setState(() {
      _controller.dispose();
      _controller3.dispose();
    });
  }

}
