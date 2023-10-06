import 'package:farab/about_Farab.dart';
import 'package:farab/views/Tarikhche/dahe_aval.dart';
import 'package:farab/views/Tarikhche/dahe_chaharom.dart';
import 'package:farab/views/Tarikhche/dahe_dovom.dart';
import 'package:farab/views/Tarikhche/dahe_sevom.dart';
import 'package:flutter/material.dart';

class HostoryList extends StatefulWidget {
  const HostoryList({super.key});

  @override
  State<HostoryList> createState() => _HostoryListState();
}

class _HostoryListState extends State<HostoryList> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutFarab()))),
          title: const Text('تاریخچه فراب'),
          centerTitle: true,
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
                    // const Positioned(
                    //   right: 0,
                    //   top: 0,
                    //   left: 0,
                    //   child: Padding(
                    //     padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(24)),
boxShadow: [
  BoxShadow(
    color: Color.fromARGB(255, 100, 102, 105),
    blurRadius: 7,
    offset: Offset(0, 7),
  ),
],

                            ),
                            width: size.width / 2.3,
                            height: size.width / 2.3,
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  InkWell(
                                    child: const Text('دهه دوم',style: TextStyle(fontSize: 18)),
                                          onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DaheDovom()));
                            },   
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: 
                            const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(24)),

boxShadow: [
  BoxShadow(
color: Color.fromARGB(255, 100, 102, 105),
blurRadius: 7,
offset: Offset(0, 7),
  ),
],

                              color: Colors.grey,
                            ),
                            width: size.width / 2.3,
                            height: size.width / 2.3,
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: const Text('دهه اول',style: TextStyle(fontSize: 18)),
                                  onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Daheaval()));
                            },                                 
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width / 2.3,
                            height: size.width / 2.3,
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 100, 102, 105),
                                        blurRadius: 7,
                                        offset: Offset(0, 7)
                                      )
                                    ],
                                    ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  InkWell(child: const Text('دهه چهارم',style: TextStyle(fontSize: 18),),
                                                onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DaheChaharom()));
                            },  
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: 
                            const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                             
                           
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 100, 102, 105),
                                  blurRadius: 7,
                                  offset: Offset(0, 7),
                                )
                              ],
                            ),
                              width: size.width / 2.3,
                              height: size.width / 2.3,
                              
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Text('دهه سوم',style: TextStyle(fontSize: 18),),
                                                    onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DaheSevom()));
                            },  
                                      
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
