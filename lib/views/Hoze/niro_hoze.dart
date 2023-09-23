import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../videoNaft.dart';

class NiroHozehFarab extends StatefulWidget {
  const NiroHozehFarab({super.key});

  @override
  State<NiroHozehFarab> createState() => _NiroHozehFarabState();
}

class _NiroHozehFarabState extends State<NiroHozehFarab> {
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
        title: const Text('حوزه نیرو فراب'),
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
                              'شرکت فراب در سال 1371 فعالیت رسمی خود را به عنوان پیمانکار عمومی احداث نیروگاه‌های آبی در کشور آغاز کرد. پس از گذشت بیش از یک دهه از احداث نیروگاه‌های آبی در کشور توسط فراب، با توجه به محدودیت پتانسیل رشد این حوزه در کشور و با تکیه بر توانمندی‎های فنی، مهندسی و اجرایی خود تصمیم گرفت تا به حوزه نیروگاه‌های آبی در خارج از کشور و نیز حوزه نیروگاه‌های حرارتی وارد شود. عملکرد موفق فراب موجب دستیابی به این اهداف شد. اکنون با گذشت بیش از دو دهه از آغاز فعالیت، ارزش پروژه‌های این شرکت در حوزه نیروگاهی، میلیون‌ها دلار است. این شرکت تاکنون 86 واحد نیروگاهی را با ظرفیت 11,190 مگاوات اجرا نموده و 2,797.2 مگاوات، شامل 784.2 مگاوات نیروگاه آبی و 2,013 مگاوات نیروگاه حرارتی، در دست اجرا دارد.',
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
