import 'package:farab/models/RadioModels.dart';
import 'package:farab/services/dio_service.dart';
import 'package:get/get.dart';

class SingleRadioController extends GetxController{

var id;
  SingleRadioController({this.id});

  RxBool loading = false.obs;

  Rx<RadioFileModel> radioFileModel = RadioFileModel().obs;

  RxList<RadioFileModel> radiofileList = RxList();

  getRadioFile()
  {
    loading.value=true;
    var response = await DioService().getmethod("https://app.farab-co.ir/radio/");
  }

}