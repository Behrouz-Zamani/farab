import 'package:farab/about_Farab.dart';
import 'package:flutter/material.dart';
import '../Home.dart';
import '../models/historyok_model.dart';

class HostoryList extends StatefulWidget {
  const HostoryList({super.key});

  @override
  State<HostoryList> createState() => _HostoryListState();
}

class _HostoryListState extends State<HostoryList> {
  int _selectedIndex = 0;

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
              SizedBox(
                  width: double.infinity,
                  height: 65,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 213, 203, 159),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                          width: double.infinity,
                          height: 64,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = 3;
                                    });
                                  },
                                  child: const Text('دهه چهارم'),
                                ),
                                InkWell(
                                  child: const Text('دهه سوم'),
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = 2;
                                    });
                                  },
                                ),
                                InkWell(
                                  child: const Text('دهه دوم'),
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = 1;
                                    });
                                  },
                                ),
                                InkWell(
                                  child: const Text('دهه اول'),
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = 0;
                                    });
                                  },
                                ),
                              ],
                            ),
                          )))),
              //لیست شرکت ها
              Expanded(
                child: Container(
                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 194, 192, 192),

                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Text(
                        historyOkModel[_selectedIndex].matn,
                        style: const TextStyle(
                            fontFamily: 'vazir',
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 0, 0),
                            height: 2.6),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Text(historyOkModel[_selectedIndex].groupe),
          ),
        ),
      ],
    );
  }
}
