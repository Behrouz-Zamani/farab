import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HozeBahreBardariFarab extends StatefulWidget {
  const HozeBahreBardariFarab({super.key});

  @override
  State<HozeBahreBardariFarab> createState() => _HozeBahreBardariFarabState();
}

class _HozeBahreBardariFarabState extends State<HozeBahreBardariFarab> {
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
        title: const Text('بهره برداری و نگه داری'),
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
                      image: Image.asset('assets/images/bahrehoze.jpg').image,
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
          SizedBox(
              width: double.infinity,
              height: 128,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 213, 203, 159),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          )),
                      width: double.infinity,
                      height: 56,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Text(
                                'پروژه',
                                style: TextStyle(
                                    fontFamily: 'vazir', fontSize: 12),
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => const AlertDialog(
                                          title: Text(
                                            'پروژه',
                                            textAlign: TextAlign.center,
                                          ),
                                          content: Text(
                                            '9',
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 32,
                                                color: Colors.red),
                                          ),
                                        ));
                              },
                            ),
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
                                        '2',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          InkWell(
                            child: const Text(
                              'آمادگی نیروگاه شیرکوه',
                              style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                        title: Text(
                                          'گیگاوات ساعت آمادگی نیروگاه شیرکوه در سال 1397',
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Text(
                                          '575',
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
                              'انرژی تولید شده',
                              style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                        title: Text(
                                          'گیگاوات ساعت انرژی تولید شده تا پایان سال 1397',
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Text(
                                          '39,079',
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
                              'انرژی پاک تولید شده',
                              style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                        title: Text(
                                          'گیگاوات ساعت انرژی پاک تولید شده تا پایان سال 1397',
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Text(
                                          '24,275',
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
                    )
                  ],
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
                  // height: size.height / 2.4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset('assets/images/OM.png'),
                      ],
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
