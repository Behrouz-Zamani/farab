// ignore_for_file: file_names

import 'package:farab/Gallery.dart';
import 'package:farab/movieList.dart';
import 'package:farab/radio_List.dart';
import 'package:farab/tvFarabList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Company_Detail.dart';
import 'models/CopmanyModel.dart';

void main() {
  runApp(const multiMedia());
}

class multiMedia extends StatelessWidget {
  const multiMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const multiMediaF(),
    );
  }
}

class multiMediaF extends StatefulWidget {
  const multiMediaF({
    Key? key,
  }) : super(key: key);

  @override
  State<multiMediaF> createState() => _multiMediaF();
}

class _multiMediaF extends State<multiMediaF> {


   late VideoPlayerController _controller;
   bool isPlaying = true ;
@override
   void initState(){
     super.initState();
      _controller=VideoPlayerController.network('https://www.farab.com/fa/wp-content/uploads/2023/03/nowruz-message-of-dr-vakili.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
   }


  
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: size.height /2.3,
                // color: Colors.amber,
                child: 
                _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),

              
                ),
                
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              width: double.infinity,
                          height: 400,
              child:          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: 
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GridView.count(crossAxisCount:  2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(child:  InkWell(child:  Image.asset("assets/images/radioR.png",fit: BoxFit.none,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => radioList()));}),),
               
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/tvR.png",fit: BoxFit.none,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => MainMoview()));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/gallery.png",fit: BoxFit.none,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => GalleryApp()));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/diary.png",fit: BoxFit.none,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[4])));}),),
                // ignore: avoid_unnecessary_containers
                

                
              ],),
            )

            
          ),
            )
          ],
        ),

        
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
    );
  }
    @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
