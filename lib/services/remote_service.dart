

import '../models/video_model.dart';
import 'package:http/http.dart' as http;

class RemoteService
{
  Future<List<VideosModels>?> gettajdidmovie() async
  {
var client=http.Client();
var uri=Uri.parse('https://sasansafari.com/flutter/api.php?access_key=flutter123456');
var response=await client.get(uri);
if(response.statusCode == 200)
{
  var json=response.body;
  return videosModelsFromJson(json);
}
return null;
  }
}