// ignore_for_file: file_names

import 'package:farab/efteFarab.dart';
import 'package:farab/views/history_list.dart';
import 'package:farab/views/test_api.dart';
import 'package:flutter/material.dart';
import 'Company_Farab.dart';
import 'Home.dart';
import 'models/chaharom.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class AboutFarab extends StatefulWidget {
  const AboutFarab({super.key});
  @override
  State<AboutFarab> createState() => _AboutFarabState();
}

class _AboutFarabState extends State<AboutFarab> {
  List<Chaharom> posted = [];
  Future getResponse() async {
    var url = "https://farab-co.ir/api/about";
    var value = await http.get(Uri.parse(url));
    if (value.statusCode == 200) {
      List jsonList = convert.jsonDecode(value.body);
      if (jsonList.isNotEmpty) {
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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeScrean()))),
        title: const Text('درباره فراب'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 61, 165),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height / 2.8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: size.height / 2.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset('assets/images/Abouted.jpg').image,
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 64,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 213, 203, 159),
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        )),
                    width: double.infinity,
                    height: 56,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            child: const Text(
                              'گواهینامه ها',
                              style: TextStyle(fontFamily: 'vazir'),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TestApiFarab()));
                            },
                          ),
                          InkWell(
                            child: const Text(
                              'افتخارات',
                              style: TextStyle(fontFamily: 'vazir'),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const efteFarab()));
                            },
                          ),
                          InkWell(
                            child: const Text(
                              'شرکت های تابعه',
                              style: TextStyle(fontFamily: 'vazir'),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Company_Frab()));
                            },
                          ),
                          InkWell(
                            child: const Text('تاریخچه فراب',
                                style: TextStyle(fontFamily: 'vazir')),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HostoryList()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
              child: FutureBuilder(
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 253, 232),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          width: double.infinity,
                          height: size.height / 2.8,
                          //color: Colors.yellow,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                posted[4].description,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'vazir',
                                    height: 2.3,
                                    color: Colors.black),
                              ),
                            )),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator());
                },
                future: getResponse(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
