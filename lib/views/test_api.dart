import 'package:farab/services/remote_service.dart';
import 'package:flutter/material.dart';
import '../models/testapi.dart';

class TestApiFarab extends StatefulWidget {
  const TestApiFarab({super.key});

  @override
  State<TestApiFarab> createState() => _TestApiFarabState();
}

class _TestApiFarabState extends State<TestApiFarab> {
  List<Post>? posted;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posted = await RemoteService().getvideos();
    if (posted != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("posted?.statusCode()"),
      ),
      body: Visibility(
        visible: isLoaded,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: posted?.length,
              itemBuilder: (context, index) {
                return Text(
                  posted![index].name,
                  style: const TextStyle(
                      fontFamily: 'vazir', fontSize: 16, wordSpacing: 2),
                );
              }),
        ),
      ),
    );
  }
}
