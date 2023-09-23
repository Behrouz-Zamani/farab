// ignore_for_file: file_names

import 'package:farab/Gallery.dart';
import 'package:farab/gallery_list.dart';
import 'package:farab/movieList.dart';
import 'package:farab/radio_List.dart';
import 'package:farab/views/videomasoliyat.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'Home.dart';
import 'models/CopmanyModel.dart';

void main() {
  runApp(const multiMedia());
}

class multiMedia extends StatelessWidget {
  const multiMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const multiMediaF(),
    );
  }
}

class multiMediaF extends StatefulWidget {
  const multiMediaF({
    Key? key,
  }) : super(key: key);

  @override
  State<multiMediaF> createState() => _multiMediaF();
}

class _multiMediaF extends State<multiMediaF> {
  late VideoPlayerController _controller;
  bool isPlaying = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-message-of-dr-vakili.mp4')
      ..initialize().then((_) {
        setState(() {
          //_controller.play();
        });
      });
  }

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeScrean()))),
        title: const Text('چند رسانه ایی'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height / 3.5,
              // color: Colors.amber,
              child:
          Image.asset("assets/images/lfarab.gif")
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Container(
                decoration: BoxDecoration(
color: const Color.fromARGB(122, 0  , 81, 165),
borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40))
                ),
                
                width: double.infinity,
               height: 424,
                child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        children: [
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/galleryok.png",
                                        fit: BoxFit.none,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('گالری تصاویر '),
                                      )
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GalleryList()));
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/radioook.png",
                                      fit: BoxFit.none,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('رادیو فراب'),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const radioList()));
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/old-tv.png",
                                        fit: BoxFit.none,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('تلویزیون فراب'),
                                      )
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const mainvideo()));
                                }),
                          ),
                          // ignore: avoid_unnecessary_containers
              
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/communicationok.png",
                                      fit: BoxFit.none,
                                    ),
                                    const Text('نشریه فراب')
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CompanyPage(companyModel[4])));
                                }),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/ssoo.png",
                                      fit: BoxFit.none,
                                    ),
                                    const Text(
                                      'مسئولیت اجتماعی',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (Masoliyatvideo())));
                                }),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/events.png",
                                      fit: BoxFit.none,
                                    ),
                                    const Text(
                                      'رویدادها',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (Masoliyatvideo())));
                                }),
                          ),
                          // ignore: avoid_unnecessary_containers
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
      
    );
  }


}
