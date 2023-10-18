import 'package:farab/about_Farab.dart';
import 'package:farab/bahrebardari.dart';
import 'package:farab/naft.dart';
import 'package:farab/nardis.dart';
import 'package:farab/proje.dart';
import 'package:farab/rahvareil.dart';
import 'package:farab/saderat.dart';
import 'package:farab/sakhteman.dart';
import 'package:farab/sarmaye.dart';
import 'package:farab/tajdid.dart';
import 'package:farab/tajhizat.dart';
import 'package:farab/views/Company/abpars_company.dart';
// ignore_for_file: file_names

import 'package:flutter/material.dart';
// import 'niro_hozeh.dart';

void main() {
  runApp(const Company_Frab());
}

// ignore: camel_case_types
class Company_Frab extends StatelessWidget {
  const Company_Frab({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainCompany(),
    );
  }
}

class MainCompany extends StatefulWidget {
  const MainCompany({
    Key? key,
  }) : super(key: key);

  @override
  State<MainCompany> createState() => _MainPageState();
}

class _MainPageState extends State<MainCompany> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutFarab()))),
        title: const Text(
          'شرکت‌های فراب',
          style: TextStyle(fontFamily: 'vazir'),
        ),
        centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

      ),
      body: SafeArea(
          child: Column(
        children: [
          //عکس بالایی
          SizedBox(
            //  color: Color.fromARGB(255, 120, 183, 241),
            width: double.infinity,
            height: size.height / 2.8,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height / 2,
                  child: Image.asset(
                    "assets/images/lfarab.gif",
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                  ),
                ),
              ],
            ),
          ),

          //لیست شرکت ها
          Expanded(
            child: Container(
              width: double.infinity,
              height: size.height / 2,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 200, 201, 203),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/tajhizat.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const tajhisat()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/tejarat.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sarmaye()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/nardis.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const nardis()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/sakhteman.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sakhteman()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/bahre.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const bahrebardari()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/naft.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const naft()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/modiriyatenerji.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const tajdid()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/reil.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RahVaReil()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/saderat.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const saderat()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/proje.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProjectPro()));
                          },
                        ),
                      ),
                                            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: size.width,
                            height: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.asset(
                                          'assets/images/company/abvapars.jpg')
                                      .image,
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AbParsCompany()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
