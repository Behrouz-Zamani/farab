import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';

import 'videoNaft.dart';


class NiroHozehFarab extends StatefulWidget {
  const NiroHozehFarab({super.key});

  @override
  State<NiroHozehFarab> createState() => _NiroHozehFarabState();
}

class _NiroHozehFarabState extends State<NiroHozehFarab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const activity_farab()))),
        title: const Text('حوزه نیرو فراب'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
                children: [
          SizedBox(
            width: double.infinity,
            height: size.height / 3.1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: size.height /3.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/images/niro.jpg').image,
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
                            'واحد های تکمیل شده',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'واحد های نیروگاهی تکمیل شده',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '86',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                        // Text('تاریخچه فراب'),
                        InkWell(
                          child: const Text(
                            'ظرفیت نصب شده',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'مگاوات ظرفیت نصب شده',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '11,190',
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
                            'خاتمه یافته',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'پروژه خاتمه یافته',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '26',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                        InkWell(
                          child: const Text('خارج کشور',
                              style:
                                  TextStyle(fontFamily: 'vazir', fontSize: 12)),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'پروژه خارج از کشور',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '7',
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
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(125, 213, 203, 159),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              width: double.infinity,
             // height: size.height / 2.5,
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
          
                ],
              ),)
    );
  }
}
