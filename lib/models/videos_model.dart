import 'package:flutter/material.dart';

class VideosModel{
    String? id;
    String? tite;
    String? price;
    
    VideosModel
    ({
      this.id, 
      this.tite,
      this.price
    });
   
VideosModel.fromJson(Map<String,dynamic> element){

      id=element["id"];
      tite=element["title"];
      price=element["price"];
}

}