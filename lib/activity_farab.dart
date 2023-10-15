// ignore_for_file: file_names

import 'package:farab/views/Hoze/hoze_ab.dart';
import 'package:farab/views/Hoze/hoze_bahrebardari.dart';
import 'package:farab/views/Hoze/hoze_hoshmand.dart';
import 'package:farab/views/Hoze/hoze_sakhteman.dart';
import 'package:farab/views/Hoze/petroshimi_hoze.dart';
import 'package:farab/views/Hoze/reili_hoze.dart';
import 'niro_hoze.dart';
import 'Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const activity_farab());
}

// ignore: camel_case_types
class activity_farab extends StatelessWidget {
  const activity_farab({super.key});

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
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeScrean()))),
        title: const Text('حوزههای فعالیت'),
        centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

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
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/lfarab.gif"),
                  ),
                ),
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
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PetroshimiHozeFarab()))
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
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ReiliHozeFarab()))
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NiroHozehFarab()));
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HozeBahreBardariFarab()));
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HozeSakhtemanFarab()));
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HozeAbFarab()));
                            }),
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HozeHoshmand()));
                            }),
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
                ))
          ],
        ),
      )),
    );
  }
}
