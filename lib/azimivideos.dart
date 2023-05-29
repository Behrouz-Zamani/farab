// ignore: unused_import
import 'package:farab/models/VideosModels.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(azimivideo());
}
// ignore: camel_case_types, use_key_in_widget_constructors
class azimivideo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainMovie(),
    );
  }
}
// ignore: camel_case_types
class mainMovie extends StatefulWidget{
  const mainMovie({
    Key? key,
  }) : super(key: key);

  @override
  State<mainMovie> createState() => _mainMovie();
}

// ignore: camel_case_types
class _mainMovie extends State<mainMovie>
{
  VideoPlayerController ? _controller;
@override
void initState(){
  super.initState();
  _controller =VideoPlayerController.network("https://www.farab.com/fa/wp-content/uploads/2023/03/interview-with-dr-azimi.mp4")
  ..initialize().then((_) {setState(() {
    
  });});
}


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        
        children: [
          
          _controller!.value.isInitialized?AspectRatio(aspectRatio: _controller!.value.aspectRatio,child: VideoPlayer(_controller!),)
          :Container(),

          VideoProgressIndicator(_controller!, allowScrubbing: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: (){
              
            }, icon: const Icon(Icons.skip_previous),color: Colors.amber[900],),
            IconButton(onPressed: (){
              _controller!.value.isPlaying?_controller!.pause():_controller!.play();
            }, icon: const Icon(Icons.play_arrow),color: Colors.amber[900],),
            IconButton(onPressed: (){}, icon: const Icon(Icons.skip_next),color: Colors.amber[900],),

          ],),
          const Text("مصاحبه با آقای دکتر عظیمی معاون حقوقی و امور قراردادهای فراب"),

        ],


      ),

      

    );

}}
