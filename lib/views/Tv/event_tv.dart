import 'package:farab/views/aks_event.dart';
import 'package:farab/views/film_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class EventTvFarab extends StatefulWidget {
  @override
  State<EventTvFarab> createState() => _Sakhtemanvideo();
}

class _Sakhtemanvideo extends State<EventTvFarab> {
  int selected = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    [
      const Locale('fa'), // English
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'رویدادها',
          style: TextStyle(fontSize: 14),
        )),
        backgroundColor: const Color.fromARGB(255, 159, 145, 42),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                height: size.height / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 159, 145, 42),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: 120,
                      height: 120,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => const AksEventFarab()));
                        },
                        child: const Center(
                            child: Text(
                          'عکس',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        )),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 159, 145, 42),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: 120,
                      height: 120,
                      child:  InkWell(
                        onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (builder) => const FilmEventFarab()));
                        },
                        child: const Center(
                            child: Text(
                          'فیلم',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      //    floatingActionButton: FloatingActionButton(
      //    backgroundColor: Color.fromARGB(255, 254, 80, 0),
      //    onPressed: () {
      //      setState(() {
      //        _controller.value.isPlaying
      //            ? _controller.pause()
      //            : _controller.play();

      //      });
      //    },
      //    child: Icon(
      //       _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //    ),
      //  ),
    );
  }
}
