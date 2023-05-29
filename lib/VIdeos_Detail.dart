// ignore_for_file: file_names

import 'package:farab/models/VideosModels.dart';
import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget{

final VideosModels videos;
const VideosPage(this.videos, {super.key});


  @override
  Widget build(BuildContext context ){
    var size=MediaQuery.of(context).size;
    return Scaffold(
appBar: AppBar(
  title: Text(videos.name),
),

body: Padding(padding: 
const EdgeInsets.all(8.0),

child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  
  children: [
    
      const SizedBox(
  
        height: 200.0,
  
        width: double.infinity,
  
        
        
  
      ),
            const SizedBox(height: 8.0,),
  
      Container(
      height: size.height /1.9,
        padding: const EdgeInsets.all(6.0),
      
      
        child: SingleChildScrollView(child: Text(videos.name,textDirection: TextDirection.rtl, style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 16, ),)),
      
      ),

    ],
  
),
),

    );
  }
}
