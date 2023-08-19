import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class VideoShow extends StatefulWidget {
  const VideoShow({super.key});

  @override
  State<VideoShow> createState() => _VideoShowState();
}

class _VideoShowState extends State<VideoShow> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}

void _setData() async {
  //var uri = 'www.sasansafari.com/flutter/api.php?access_key=flutter123456';
String url='https://sasansafari.com/flutter/api.php?access_key=flutter123456';
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
        var jsonResponse=convert.jsonDecode(response.body);
       var videoes = jsonResponse;
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

Widget _buildBody() {
  return new Container(
    child: ListView.builder(
      itemCount:10 ,
      itemBuilder: (BuildContext context, int index) {
      return new Container(
        color: Colors.green,
        child: new Text(index.toString()),
      );
    }),
  );
}
