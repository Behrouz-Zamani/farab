import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() =>runApp(tvFarab());

class tvFarab extends StatefulWidget{
  const tvFarab ({super.key});

  @override
_tvFarab createState()=> _tvFarab();
}
class _tvFarab  extends State<tvFarab> {
   late VideoPlayerController _controller;
   bool isPlaying = false ;
@override
   void initState(){
     super.initState();
      _controller=VideoPlayerController.network('https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-message-of-dr-vakili.mp4')
      ..initialize().then((_) {
        setState(() {
          
        });
      });
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
   }
