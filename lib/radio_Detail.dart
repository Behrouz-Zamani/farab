
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

// ignore: camel_case_types
class radio_Detail extends StatefulWidget {
  const radio_Detail({super.key});

  @override
  State<radio_Detail> createState() => _radio_DetailState();
}

// ignore: camel_case_types
class _radio_DetailState extends State<radio_Detail> {
  final _player = AudioPlayer();
  bool isPlaying = false;
  String url =
      "https://www.farab.com/fa/wp-content/uploads/2023/03/dafnavazi-mohammad-vakili-farab.mp3";

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    bindPlayer();
  }

  bindPlayer() async {
    await _player.setUrl(url);

    duration = _player.duration!;
    setState(() {});
    _player.positionStream.listen((event) {
      Duration temp = event;
      position = temp;
    });
  }

  playeeAction() {
    if (isPlaying) {
      _player.pause();
      isPlaying = false;
    } else {
      _player.play();
      isPlaying = true;
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(1000),
                  bottomRight: Radius.circular(1000),
                ),
                boxShadow: <BoxShadow>[
                  const BoxShadow(
                      blurRadius: 1.0, color: Color.fromARGB(255, 2, 109, 145))
                ],
                // color: Color.fromRGBO(144, 164, 174, 1),

                image: DecorationImage(
                    image: Image.asset(
                  'assets/images/dafnavazi.jpg',
                  fit: BoxFit.fill,).image)),
            width: 300,
            height: size.height / 2.3,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 96, 0, 0),
            child: Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: size.height /4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slider(
                        value: 0,
                        min: 0,
                        max: 0,
                        onChanged: (value) async {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.skip_previous,
                          size: 24,
                          color: Color.fromARGB(255, 14, 65, 88),
                        ),
                        IconButton(
                            iconSize: 58,
                            onPressed: playeeAction,
                            icon: isPlaying
                                ? const Icon(Icons.pause_circle_outline_outlined)
                                : const Icon(Icons.play_circle_outline)),
                         IconButton(
                         icon:const Icon( Icons.skip_next),
                          onPressed:() {
                                _player.setAsset('assets/audio/mahboob.mp3');
                                _player.play();
                          } ,
                          iconSize: 24,
                          color: const Color.fromARGB(255, 243, 7, 39),
                          
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
