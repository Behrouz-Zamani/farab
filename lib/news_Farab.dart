// ignore_for_file: file_names

import 'package:farab/CustomNews.dart';
import 'package:farab/models/NewsModel.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

// ignore: camel_case_types
class news_Farab extends StatelessWidget{
  const news_Farab({Key? key}):super(key: key);

  @override 
  Widget build(BuildContext context)
  {
         
      return Scaffold(
        appBar: AppBar(
leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const homeScrean()))),
  
  title: const Text('اخبار فراب'),
    centerTitle: true,

  ),

        
        body: SafeArea(child: 
        
          ListView.builder(
          itemCount :newsModels.length,
          itemBuilder: (context ,index)=> CustomNews(newsModels[index],context),
          )),
        );
      
  }
}