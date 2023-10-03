import 'package:farab/about_Farab.dart';
import 'package:farab/bahrebardari.dart';
import 'package:farab/naft.dart';
import 'package:farab/nardis.dart';
import 'package:farab/saderat.dart';
import 'package:farab/sakhteman.dart';
import 'package:farab/sangab.dart';
import 'package:farab/sarmaye.dart';
import 'package:farab/tajdid.dart';
import 'package:farab/tajhizat.dart';
// ignore_for_file: file_names

import 'package:flutter/material.dart';
// import 'niro_hozeh.dart';

void main() {
  runApp(const Company_Frab());
}

// ignore: camel_case_types
class Company_Frab extends StatelessWidget {
  const Company_Frab({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainCompany(),
    );
  }
}

class MainCompany extends StatefulWidget {
  const MainCompany({
    Key? key,
  }) : super(key: key);

  @override
  State<MainCompany> createState() => _MainPageState();
}

class _MainPageState extends State<MainCompany> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutFarab()))),
        title: const Text('شرکت های فراب',style: TextStyle(fontFamily: 'vazir'),),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          //عکس بالایی
          SizedBox(
            //  color: Color.fromARGB(255, 120, 183, 241),
            width: double.infinity,
            height: size.height / 2.8,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height / 2,
                  child: Image.asset(
                    "assets/images/lfarab.gif",
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                  ),
                ),
              ],
            ),
          ),

          //لیست شرکت ها

          //    SizedBox(
          //     width: double.infinity,
          //     height: size.height / 3,
          //         child:Image.asset("assets/images/lfarab.gif")
          //     ),
          // ),
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('ساختمان و نصب فراب')
                              ]),
                          onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const sakhteman()))
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
                                Image.asset(
                                  "assets/images/nardislogo.jpg",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('شرکت ناردیس')
                              ]),
                          onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const nardis()))
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text(' ساخت تجهیزات فراب')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const tajhisat()));
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('سنگاب')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sangab()));
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('نفت و گاز فراب')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const naft()));
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('بهره‌برداری و نگهداری')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const bahrebardari()));
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('تجدید‌پدیر فراب')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const tajdid()));
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('شرکت صادرات فراب')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const saderat()));
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
                                Image.asset(
                                  "assets/images/farab-logo-header.png",
                                  width: 95,
                                  height: 95,
                                  fit: BoxFit.contain,
                                ),
                                const Text('تجارت و سرمایه‌گذاری')
                              ]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sarmaye()));
                          }),
                    ),
                    // Container(
                    //   alignment: AlignmentDirectional.center,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(16),
                    //       boxShadow: const [
                    //         BoxShadow(
                    //           color: Colors.black12,
                    //           blurRadius: 3.0,
                    //         )
                    //       ]),
                    //   child: InkWell(
                    //       child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "assets/images/farab-logo-header.png",
                    //               width: 95,
                    //               height: 95,
                    //               fit: BoxFit.contain,
                    //             ),
                    //             const Text('شرکت آرمان فراب')
                    //           ]),
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => videoTajdid()));
                    //       }),
                    // ),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
