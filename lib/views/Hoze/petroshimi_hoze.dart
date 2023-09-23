import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../videoNaft.dart';

class PetroshimiHozeFarab extends StatefulWidget {
  const PetroshimiHozeFarab({super.key});

  @override
  State<PetroshimiHozeFarab> createState() => _PetroshimiHozeFarabState();
}

class _PetroshimiHozeFarabState extends State<PetroshimiHozeFarab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    const [
      Locale('fa'), // English
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const activity_farab()))),
        title: const Text('نفت، گاز و پتروشیمی'),
        centerTitle: true,
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
                      image: Image.asset('assets/images/gaz.jpg').image,
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
                        // InkWell(
                        //   child: const Text(
                        //     'واحد های تکمیل شده',
                        //     style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                        //   ),
                        //   onTap: () {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text(
                        //                 'واحد های نیروگاهی تکمیل شده',
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //               content: Text(
                        //                 '86',
                        //                 textDirection: TextDirection.rtl,
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 32, color: Colors.red),
                        //               ),
                        //             ));
                        //   },
                        // ),
                        // Text('تاریخچه فراب'),
                        InkWell(
                          child: const Text(
                            'پروژه خارج از کشور',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                     'پروژه خارج از کشور',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '1',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                        InkWell(
                          child: const Text(
                            'پروژه در حال اجرا',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'پروژه در حال اجرا',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '9',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                        InkWell(
                          child: const Text('پروژه خاتمه یافته',
                              style:
                                  TextStyle(fontFamily: 'vazir', fontSize: 12)),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'پروژه خاتمه یافته',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '5',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          //باکس پایین
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(125, 213, 203, 159),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  width: double.infinity,
                  height: size.height / 2.4,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'فراب در سال 1384 به حوزه نفت، گاز و پتروشیمی وارد شد و تاکنون 15 پروژه بالادستی و پایین دستی را به روش EPC اخذ نموده است. گروه فراب در توسعه میادین نفت و گاز، مجتمع‌های فراساحلی، پالایشگاه‌های نفت و گاز، واحدهای یوتیلیتی و آفسایت، مجتمع‌های پتروشیمی و صنایع وابسته، خطوط لوله، ایستگاه‌‌های تقویت فشار و تلمبه‌خانه و نیز مخازن نفت فعالیت می‎کند.',
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 14, height: 2.2),
                            ),
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
                                  width: 105,
                                  height: 105,
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
                                          children: [
                                            Image.asset(
                                              "assets/images/solar.png",
                                              width: 75,
                                              height: 75,
                                              fit: BoxFit.cover,
                                            ),
                                            const Text(
                                                'پروژه‌های نیروگاه خورشیدی',
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.fade,fontSize: 12))
                                          ]),
                                      onTap: () => {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Naftvideo()))
                                          }),
                                ),
                                Container(
                                  width: 105,
                                  height: 105,
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
                                          children: [
                                            Image.asset(
                                              "assets/images/power-plant.png",
                                              width: 65,
                                              height: 65,
                                              fit: BoxFit.cover,
                                            ),
                                            const Text(
                                                'پروژه ‌های نیروگاه حرارتی',
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.fade,fontSize: 12))
                                          ]),
                                      onTap: () => {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Naftvideo()))
                                          }),
                                ),
                                Container(
                                  width: 105,
                                  height: 105,
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
                                          children: [
                                            Image.asset(
                                              "assets/images/abi.png",
                                              width: 75,
                                              height: 75,
                                              fit: BoxFit.cover,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Text(
                                                'پروژه‌های نیروگاه آبی',
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.fade,fontSize: 12),
                                              ),
                                            )
                                          ]),
                                      onTap: () => {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Naftvideo()))
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
            ),
          )
        ],
      )),
    );
  }
}
