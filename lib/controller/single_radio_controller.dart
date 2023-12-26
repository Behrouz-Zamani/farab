import 'package:farab/models/RadioModels.dart';
import 'package:farab/services/dio_service.dart';
import 'package:get/get.dart';

class SingleRadioController extends GetxController{

var id;
  SingleRadioController({this.id});

  RxBool loading = false.obs;


  RxList<RadioFileModel> radiofileList = RxList();

  getRadioFile()
  async {
    loading.value=true;
    var response = await DioService().getmethod("https://app.farab-co.ir/radio/");

    if(response.statuCode==200){
        for(var element in response.data["name"]){
    }
  }

}
}