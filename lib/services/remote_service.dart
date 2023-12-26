import 'package:farab/models/testapi.dart';
import 'package:http/http.dart' as http;

import 'about_class_services.dart';
import 'aval_class_services.dart';

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }

  Future<List<Post>?> getvideos() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/movie');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }

  Future<List<Post>?> getProje() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/proje');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }

  Future<List<AboutServices>?> getAbout() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/about');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return AboutFromJson(json);
    }
    return null;
  }

  Future<List<AvalServices>?> getAval() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/about/aval');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return AvalFromJson(json);
    }
    return null;
  }

  Future<List<AvalServices>?> getDovom() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/about/dovom');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return AvalFromJson(json);
    }
    return null;
  }

  Future<List<AvalServices>?> getSevom() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/about/sevom');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return AvalFromJson(json);
    }
    return null;
  }

  Future<List<AvalServices>?> getChaharom() async {
    var client = http.Client();
    var uri = Uri.parse('https://farab-co.ir/api/about/chaharom');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return AvalFromJson(json);
    }
    return null;
  }
}
