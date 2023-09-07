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
              child: SizedBox(
                width: double.infinity,
                height: size.height / 3,
                    child:Image.asset("assets/images/lfarab.gif")
                ),
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
                                    "assets/images/gaz.jpg",
                                    width: 95,
                                    height:95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('نفت، گاز، پتروشیمی')
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
                                    "assets/images/niro.jpg",
                                    width: 95,
                                   height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('نیروگاه های حرارتی')
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
                                    "assets/images/ab.jpg",
                                    width: 95,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('نیروگاههای برق آبی')
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
                                    "assets/images/tajdidok.jpg",
                                    width: 95,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('انرژی تجدید پذیر')
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
                                    "assets/images/hoshmand.jpg",
                                    width: 95,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('پروژه های هوشمند')
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
                                    "assets/images/reil.jpg",
                                    width: 95,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('پروژه های ریلی')
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
                                    "assets/images/bahrebardari.jpg",
                                    width: 95,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  const Text('بهره برداری')
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
                                  const Text('پروژه های ساختمانی')
                                ]),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => videoTajdid()));
                            }),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      )),

    );
  }
}
