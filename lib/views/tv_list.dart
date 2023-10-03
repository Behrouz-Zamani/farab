import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VideoShow extends StatefulWidget {
  const VideoShow({super.key});

  @override
  State<VideoShow> createState() => _VideoShowState();
}

class _VideoShowState extends State<VideoShow> {

  @override
  void initState() {
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
  } else {
  }
}

Widget _buildBody() {
  return ListView.builder(
    itemCount:10 ,
    itemBuilder: (BuildContext context, int index) {
    return Container(
      color: Colors.green,
      child: Text(index.toString()),
    );
  });
}
