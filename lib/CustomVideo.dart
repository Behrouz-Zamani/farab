// ignore_for_file: file_names

import 'package:farab/VIdeos_Detail.dart';
import 'package:farab/models/VideosModels.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomVideo(VideosModels videos,BuildContext context){

return InkWell(

  onTap: (){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => VideosPage(videos))
      );
  },
  child:   Container(
  
  
  
  margin: const EdgeInsets.all(12.0),
  
  padding: const EdgeInsets.all(8.0),
  
  decoration: BoxDecoration(
  
    color: Colors.white,
  
    borderRadius: BorderRadius.circular(18.0),
  
    boxShadow: const [
  
      BoxShadow(
  
        color: Colors.black12,
  
        blurRadius: 3.0,
  
      ), 
  
    ]
  
  ),
  
  
  
  child: Column(
  
    mainAxisAlignment: MainAxisAlignment.end,
  
    crossAxisAlignment: CrossAxisAlignment.end,
  
    children: [
  
      Container(
  
        height: 200.0,
  
        width: double.infinity,
  
        decoration: BoxDecoration(
  
          image: DecorationImage(
  
            image:  AssetImage(videos.url),
  
            fit: BoxFit.cover
  
          ),
  
        borderRadius: BorderRadius.circular(12.0),
  
        ),
  
      ),
  
  
  
      const SizedBox(height: 8.0,),
  
      Container(
  
        padding: const EdgeInsets.all(6.0),
  
        decoration: BoxDecoration(
  
          color: Colors.blue[600],
  
          borderRadius: BorderRadius.circular(20),
  
        ),
  
  
  
        child: Text(videos.name, style: const TextStyle(color: Colors.white),),
  
      ),
  
  
  
      const SizedBox(height: 8.0,),
  
      Text(videos.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textDirection: TextDirection.rtl,)
  
    ],
  
  ),
  
  ),
);

}