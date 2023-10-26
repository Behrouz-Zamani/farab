import 'package:farab/MultimediaFarab.dart';
import 'package:farab/gallery_list.dart';
import 'package:farab/models/magazin_model.dart';
import 'package:farab/views/Magazine/magazin_list_sal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Home.dart';

class MagazinList extends StatefulWidget {
  const MagazinList({super.key});

  @override
  State<MagazinList> createState() => _MagazinListState();
}

class _MagazinListState extends State<MagazinList> {
  late final Magazine magagins;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const homeScrean()))),
          title: const Text('نشریه فراب'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 61, 165),
        ),
        body: SafeArea(
          child: Column(
            children: [
              //عکس بالایی
              SizedBox(
                width: double.infinity,
                height: size.height / 2.8,
                child: Stack(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: size.height / 2,
                        child: Image.asset("assets/images/lfarab.gif")),
                  ],
                ),
              ),
              //down
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,
                            child: InkWell(
                              onTap: (){
                                 Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1402")));
                              },
                            child: const Center(
                                child: Text('1402',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 32))),

                            ),// child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 96,
                            height: 96,
                            child: InkWell(
                              onTap: (){
                                 Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1401")));
                              },
                              child: const Center(
                                  child: Text('1401',
                                      style: TextStyle(
                                          fontFamily: 'vazir', fontSize: 36))),

                              // child: Image(image:),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1400")));
                              },
                              child: const Center(
                                  child: Text('1400',
                                      style: TextStyle(
                                          fontFamily: 'vazir', fontSize: 36))),
                            ),

                            // child: Image(image:),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1399")));
                              },
                              child: const Center(
                                  child: Text('1399',
                                      style: TextStyle(
                                          fontFamily: 'vazir', fontSize: 36))),
                            ),

                            // child: const Center(
                            //     child: Text('1399',
                            //         style: TextStyle(
                            //             fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1398")));
                              },
                                child: const Center(
                                  child: Text('1398',
                                      style: TextStyle(
                                          fontFamily: 'vazir', fontSize: 36)),
                                ),),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,
child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                             MagazinSalListFarab(salnumber :"1397")));
                              },
                            child: const Center(
                                child: Text('1397',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),),

                            // child: Image(image:),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1396',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1395',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1394',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1393',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1392',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1391',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 0, 61, 165),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            width: 96,

                            height: 96,

                            child: const Center(
                                child: Text('1390',
                                    style: TextStyle(
                                        fontFamily: 'vazir', fontSize: 36))),

                            // child: Image(image:),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
