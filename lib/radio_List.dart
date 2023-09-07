import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:just_audio/just_audio.dart';


class radioList extends StatefulWidget {
  const radioList({super.key});

  @override
  State<radioList> createState() => _radioListState();
}

class _radioListState extends State<radioList> {

 //final _player = AudioPlayer();

 late AudioPlayer _player;
 @override
 void initState(){
  super.initState();
  _player=AudioPlayer();
 }
@override
void dispose(){
  _player.dispose();
  super.dispose();
}



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('رادیو فراب، خدمتی نوین از گروه فراب'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3.3,
            color: Colors.amber,
            child:
            Image.asset("assets/images/radiogif.gif"),
          ),
          Column(
            children: [
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 64,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 57, 12, 141),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'رادیو فراب',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () async {
                                await _player.setAsset('assets/images/mahboob.mp3');
                                _player.play();
                              },
                              icon: const Icon(Icons.play_circle_outline),
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
