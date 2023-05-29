// ignore_for_file: file_names

import 'package:farab/CustomNews.dart';
import 'package:farab/models/NewsModel.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class news_Farab extends StatelessWidget{
  const news_Farab({Key? key}):super(key: key);

  @override 
  Widget build(BuildContext context)
  {
         
      return Scaffold(

        
        body: SafeArea(child: 
        
          ListView.builder(
          itemCount :newsModels.length,
          itemBuilder: (context ,index)=> CustomNews(newsModels[index],context),
          )),
        );
      
  }
}