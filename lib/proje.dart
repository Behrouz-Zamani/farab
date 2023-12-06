// ignore_for_file: file_names

import 'package:farab/Company_Farab.dart';
import 'package:farab/views/Company/eslamabad_company.dart';
import 'package:farab/views/Company/sangab_company.dart';
import 'package:farab/views/Company/yazd_company.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProjectPro());
}

// ignore: camel_case_types
class ProjectPro extends StatelessWidget {
  const ProjectPro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //       localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('fa'), // English
      // ],
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: const multiMediaF(),
    );
  }
}

// ignore: camel_case_types
class multiMediaF extends StatefulWidget {
  const multiMediaF({
    Key? key,
  }) : super(key: key);

  @override
  State<multiMediaF> createState() => _multiMediaF();
}

// ignore: camel_case_types
class _multiMediaF extends State<multiMediaF> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Company_Frab()))),
        title: const Text('شرکت های پروژه'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 61, 165),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: size.height / 3.5,
                child: Image.asset("assets/images/lfarab.gif")),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: const BoxDecoration(
            //       color: Colors.black12,
            //       borderRadius: BorderRadius.all(Radius.circular(32)),
            //     ),
            //     height: 56,
            //     width: double.infinity,
            //     child: Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           InkWell(
            //             child: const Text('برق اسلام آباد'),
            //             onTap: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => EslamAbadCompany()));
            //             },
            //           ),
            //           InkWell(
            //             child: const Text('برق یزد'),
            //             onTap: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (builder) => YazdCompany()));
            //             },
            //           ),
            //           InkWell(
            //             child: const Text('سنگاب'),
            //             onTap: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => SangabCompany()));
            //             },
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height / 1.8,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 112, 105, 105),
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                width: double.infinity,
                //  height: size.height / 2.1,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          """
شركت بين المللي مديريت صادرات فراب به عنوان یک شركت تخصصی در حوزه کسب و کار تجاری و ارائه خدمات فني و مهندسي در تلاش است، تا در سایه بازتعریفی جدید از استانداردهای ارائه خدمت در صنعت بازرگاني، کلیه خدمات مورد نیاز افراد، گروه‌ها و بنگاه‌ها را در صنایع گوناگون تأمین نمايد و به طریقی عمل كند که نوید تجربه‌ای متمایز از ارائه خدمات را به مشتریان خود می‌دهیم. تمرکز استراتژیک ما پوشش دادن خلاءهای موجود در حوزه ابزارسازی با رویکرد خدمات بازرگاني، نهادسازی با هدف توسعه زنجیره خدمات، مدیریت ریسک و معاملات ادغام و تملیک به منظور ایجاد هم‌افزایی و ارزش افزوده در کسب و کارها خواهد بود.
""",
                          textAlign: TextAlign.right,
                          style: TextStyle(height: 2.3),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:95,
                                height: 95,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                      )
                                    ]),
                                child: InkWell(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        // Image.asset(
                                        //   "assets/images/solar.png",
                                        //   width: 75,
                                        //   height: 75,
                                        //   fit: BoxFit.cover,
                                        // ),
                                        Text('شرکت برق اسلام آباد',
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                overflow: TextOverflow.fade,
                                                fontSize: 12))
                                      ]),
                                  onTap: () => {
                                      Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EslamAbadCompany()))
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Nirogahvideo()))
                                  },
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                      )
                                    ]),
                                child: InkWell(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          // Image.asset(
                                          //   "assets/images/power-plant.png",
                                          //   width: 65,
                                          //   height: 65,
                                          //   fit: BoxFit.cover,
                                          // ),
                                          Text('شرکت برق یزد',
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  overflow: TextOverflow.fade,
                                                  fontSize: 12))
                                        ]),
                                    onTap: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      YazdCompany()))
                                        }),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                      )
                                    ]),
                                child: InkWell(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          // Image.asset(
                                          //  // "assets/images/abi.png",
                                          //  // width: 75,
                                          //   //height: 75,
                                          //  // fit: BoxFit.cover,
                                          // ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              'شرکت سنگاب',
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  overflow: TextOverflow.fade,
                                                  fontSize: 12),
                                            ),
                                          )
                                        ]),
                                    onTap: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SangabCompany()))
                                        }),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
