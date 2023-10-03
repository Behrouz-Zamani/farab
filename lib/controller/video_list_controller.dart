

import 'package:get/get.dart';

import '../services/dio_service.dart';

class VideoListController extends GetxController{


  //  late  Rx<VideosModel> listtv;

    RxList namalist=RxList();

    getVideoItems() async{
      
      var response=await DioService().getmethod('https://sasansafari.com/flutter/api.php?access_key=flutter123456');
      response.data['id'];
      response.data['title'];
      response.data['price'];


      // ignore: avoid_print
      print(response.data['title']);
    }
}