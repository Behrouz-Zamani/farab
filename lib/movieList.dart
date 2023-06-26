// ignore_for_file: file_names

import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Company_Detail.dart';
import 'VIdeos_Detail.dart';
import 'models/CopmanyModel.dart';

void main() {
  runApp(const mainvideo());
}

// ignore: camel_case_types
class mainvideo extends StatelessWidget {
  const mainvideo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // English
      ],
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const MainMoview(),
    );
  }
}

class MainMoview extends StatefulWidget {
  const MainMoview({
    Key? key,
  }) : super(key: key);

  @override
  State<MainMoview> createState() => _MainMoview();
}

class _MainMoview extends State<MainMoview> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff000b49),
            child: const Center(
                child: Text(
              "تلویزیون فراب",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height / 3.2,
              child: Image(
                image: Image.asset("assets/images/main.jpg").image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/niro.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[0])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/ab.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[1])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/sakhteman.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[2])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/reil.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[4])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/hoshmand.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[3])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(
                            child: Image.asset(
                              "assets/images/gaz.jpg",
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[5])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers

                      Container(
                        child: InkWell(),
                      ),

                      Container(
                        child: InkWell(
                          
                            child: Image.asset(
                              "assets/images/bahrebardari.jpg",
                              fit: BoxFit.cover,
                            ),
                            
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompanyPage(companyModel[6])));
                            }),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: InkWell(),
                      ),

                      // ignore: avoid_unnecessary_containers
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
