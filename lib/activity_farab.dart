// ignore_for_file: file_names

import 'package:farab/videoHoshmand.dart';
import 'package:farab/videoNaft.dart';
import 'package:farab/videoNirogah.dart';
import 'package:farab/videoReili.dart';
import 'package:farab/videoSakhteman.dart';
import 'package:farab/videoTajdid.dart';

import 'Home.dart';
import 'niro_hoze.dart';
import 'videoAb.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


void main() {
  runApp(const activity_farab());
}

// ignore: camel_case_types
class activity_farab extends StatelessWidget {
  const activity_farab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('fa'), // English
      // ],
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


  bool isPlaying = false;

 

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeScrean()))),
        title: const Text('حوزه های فعالیت'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/mockup.png"),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 16.0, top: 10.0, right: 16.0, bottom: 40.0),
                  // child: SizedBox(
                  //   width: double.infinity,
                  //   height: 80,
            
                  //   // color: Colors.amber,
                  //   child: _controller.value.isInitialized
                  //       ? AspectRatio(
                  //           aspectRatio: _controller.value.aspectRatio,
                  //           child: selected == 0
                  //               ? VideoPlayer(_controller)
                  //               : selected == 1
                  //                   ? VideoPlayer(_controller2)
                  //                   : selected == 2
                  //                       ? VideoPlayer(_controller3)
                  //                       : null,
                  //         )
                  //       : Container(),
                  // ),
                ),
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 213, 203, 159),
              child: SizedBox(
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
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/niro.jpg",
                                      width: 95,
                                      height:95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('حوزه نیرو')
                                  ]),
                              onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NiroHoze()))
                                  }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/reil.jpg",
                                      width: 95,
                                     height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('صنایع ریلی')
                                  ]),
                              onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Abvideo()))
                                  }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/naftok.jpg",
                                      width: 95,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('نفت، گاز، پتروشیمی')
                                  ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sakhtemanvideo()));
                              }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/ab.jpg",
                                      width: 95,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('حوزه آب')
                                  ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Reilvideo()));
                              }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/sakhteman.jpg",
                                      width: 95,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('حوزه ساختمان')
                                  ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Hoshmandvideo()));
                              }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/bahrebardari.jpg",
                                      width: 95,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('بهره برداری و نگهداری')
                                  ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Naftvideo()));
                              }),
                        ),
                        // ignore: avoid_unnecessary_containers

                        Container(
                          decoration: const BoxDecoration(
                              // color: Colors.white,
                              // borderRadius: BorderRadius.circular(16),
                              // boxShadow: [
                              //  BoxShadow(
                              //  color: Colors.black12,
                              //   blurRadius: 3.0,
                              //  )
                              // ]
                              ),
                          child: InkWell(),
                        ),

                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3.0,
                                )
                              ]),
                          child: InkWell(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/hoshmand.jpg",
                                      width: 95,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                    const Text('شبکه های هوشمند')
                                  ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => videoTajdid()));
                              }),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: InkWell(),
                        ),

                        // ignore: avoid_unnecessary_containers
                      ],
                    ),
                  )),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 254, 80, 0),
        onPressed: () {
          setState(() {
            // _controller.value.isPlaying
            //     ? _controller.pause()
            //     : _controller.play();

            // _controller2.value.isPlaying
            //     ? _controller2.pause()
            //     : _controller2.play();

            // _controller3.value.isPlaying
            //     ? _controller3.pause()
            //     : _controller3.play();
          });
        },
        // child: Icon(
        //   // _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
    // _controller2.dispose();
    // _controller3.dispose();
  }

  changevideo() {
    setState(() {
      // selected = 1;
    });
  }

  stop() {
    setState(() {
      // _controller.dispose();
      // _controller3.dispose();
    });
  }
}
