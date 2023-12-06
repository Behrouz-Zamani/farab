import 'package:farab/models/testapi.dart';
import 'package:http/http.dart' as http;

class RemoteService
{
  Future<List<Post>?> getPosts() async{
var client = http.Client();
var uri=Uri.parse('https://jsonplaceholder.typicode.com/posts');
var response=await client.get(uri);

if (response.statusCode==200) {
  var json =response.body;
  return postFromJson(json);
  }
return null;
}
  Future<List<Post>?> getvideos() async{
var client = http.Client();
var uri=Uri.parse('https://farab-co.ir/api/movie');
var response=await client.get(uri);

if (response.statusCode==200) {
  var json =response.body;
  return postFromJson(json);
  }
return null;
}
  Future<List<Post>?> getProje() async{
var client = http.Client();
var uri=Uri.parse('http://10.0.2.2:7005/api/proje');
var response=await client.get(uri);

if (response.statusCode==200) {
  var json =response.body;
  return postFromJson(json);
  }
return null;
}


}