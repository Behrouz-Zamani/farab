// ignore_for_file: file_names

import 'package:farab/Gallery.dart';
import 'package:farab/MultimediaFarab.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const GalleryList());
}

// ignore: camel_case_types
class GalleryList extends StatelessWidget {
  const GalleryList({super.key});

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
        title: const Text('گالری تصاویر فراب'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
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
                                        "assets/images/power.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      Text('نیروگاه حرارتی')
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const GalleryApp()))
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
                                        "assets/images/abi.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      Text('نیروگاههای برق-آبی')
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const GalleryApp()))
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
                                        "assets/images/civil.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      Text('پروژه های ساختمانی')
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GalleryApp()));
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
                                        "assets/images/raily.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text('پروژه های ریلی')
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const GalleryApp()));
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
                                        "assets/images/hosh.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text('پروژه های هوشمند')
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GalleryApp()));
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
                                        "assets/images/petro.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text('نفت، گاز، پتروشیمی')
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const GalleryApp()));
                                }),
                          ),
                          // ignore: avoid_unnecessary_containers

                          Container(
                            decoration: BoxDecoration(
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
                                        "assets/images/solar.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text('انرژی تجدید پذیر')
                                    ]),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const GalleryApp()));
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
        ),
      )),
    );
  }

}
