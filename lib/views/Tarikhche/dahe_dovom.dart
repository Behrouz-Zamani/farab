import 'package:farab/views/history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../models/chaharom.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class DaheDovom extends StatefulWidget {
  const DaheDovom({super.key});

  @override
  State<DaheDovom> createState() => _DaheDovomState();
}

class _DaheDovomState extends State<DaheDovom> {
List<Chaharom> posted = [];
  Future getResponse() async {
    var url = "https://farab-co.ir/api/about/dovom";
    var value = await http.get(Uri.parse(url));
    if (value.statusCode == 200) {
      List jsonList = convert.jsonDecode(value.body);
      if (jsonList.length>0) {
        for (int i = 0; i < jsonList.length; i++) {
          setState(() {
            posted.add(Chaharom(
                name: jsonList[i]["name"],
                description: jsonList[i]["description"]));
          });
        }
      }
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    getResponse();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HostoryList()))),
        title: const Text('تاریخچه دهه دوم فراب'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
              Radius.circular(24),
            )),
            width: double.infinity,
            height: size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: ImageSlideshow(
                  initialPage: 0,
                  indicatorColor: Colors.red,
                  indicatorBackgroundColor: Colors.grey,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/images/1384.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1382.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1379.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1372.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1371.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 231, 229),
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(24),
                          topEnd: Radius.circular(24))),
                  width: double.infinity,
                  height: size.height / 3,
                  child: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FutureBuilder(
                          builder: (context, snapshot) {
                            return snapshot.hasData
                                ? Text(
                                    posted[0].description,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'vazir',
                                        height: 2.3,
                                        color: Colors.black),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.red),),
                                  );
                          },
                          future: getResponse(),
                        )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
