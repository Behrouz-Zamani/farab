// ignore_for_file: file_names

//import 'package:farab/Gallery.dart';
import 'package:farab/MultimediaFarab.dart';

import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';

void main() {
  runApp(const FilmEventFarab());
}

// ignore: camel_case_types
class FilmEventFarab extends StatelessWidget {
  const FilmEventFarab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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

  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const multiMedia()))),
        title: const Text('رویدادها - فیلم'),
        centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                child:  SizedBox(
                width: double.infinity,
                height: size.height / 3,
                child: Image.asset("assets/images/lfarab.gif")),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 1.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/gaz.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('نفت، گاز، پتروشیمی'),
                              )
                            ]),
                      ),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 1.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/reil.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('صنایع ریلی'),
                              )
                            ]),
                      ),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 1.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/niro.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('نیـــرو'),
                              )
                            ]),
                      ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/bahrehoze.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'بهره‌برداری و نگهداری',
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ]),
                         ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/sakhteman.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('ساختمان'),
                                )
                              ]),
                          ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/ab.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('آب'),
                                )
                              ]),
                          ),
                    ),
                    // ignore: avoid_unnecessary_containers

                    Container(
                      decoration: const BoxDecoration(),
                      child: const InkWell(),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 1.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/hoshmand.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('شبکه‌های هوشمند'),
                              )
                            ]),
                      ),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 1.0),
                                padding: const EdgeInsets.all(2.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/farab-logo-header.png',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('مصاحبه ها'),
                              )
                            ]),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(16),
                        //     boxShadow: const [
                        //       BoxShadow(
                        //         color: Colors.black12,
                        //         blurRadius: 3.0,
                        //       )
                        //     ]),
                        // child: InkWell(
                        //     child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           Image.asset(
                        //             "assets/images/sakhteman.jpg",
                        //             width: 95,
                        //             height: 95,
                        //             fit: BoxFit.cover,
                        //           ),
                        //           const Text('پروژه های ساختمانی')
                        //         ]),
                        //     onTap: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => videoTajdid()));
                        //     }),
                        ),
                  ],
                ),
              )),
          ],
        ),
      )),
    );
  }

}
