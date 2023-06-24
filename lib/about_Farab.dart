// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:farab/eftekharatFarab.dart';
import 'package:farab/ozviyatFarab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Home.dart';

void main() {
  runApp(const about());
}

// ignore: camel_case_types
class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // English
      ],
      home: aboutFarab(),
    );
  }
}

// ignore: camel_case_types
class aboutFarab extends StatefulWidget {
  const aboutFarab({
    Key? key,
  }) : super(key: key);

  @override
  State<aboutFarab> createState() => _aboutFarab();
}

// ignore: camel_case_types
class _aboutFarab extends State<aboutFarab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //  backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height / 2.3,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(55)),
                    image: DecorationImage(
                        image: Image.asset("assets/images/main.jpg").image,
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(139, 253, 250, 250)),
                                child: const Icon(CupertinoIcons.home),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const homeScrean()));
                              }),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: const Text('افتخارات فراب'),
                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const eftekharatFarab())
                    );
                  },
                  ),
               // Text('تاریخچه فراب'),
                InkWell(
                  child: const Text('عضویت ها'),

                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ozviyatFarab())
                    );
                  },
                  ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(187, 255, 255, 255),
              width: double.infinity,
              height: size.height / 2 * 0.75,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(' شرکت فراب، به عنوان پیمانکار اصلی احداث نیروگاه‌های آبی در ایران، فعالیت خود را از سال 1371 آغاز نمود. موفقیت در کسب و کار محوری، فراب را به گسترش محدوده فعالیت‌هایش ترغیب نمود و این شرکت گام به گام در پروژه‌های نفت، گاز و پتروشیمی، نیروگاه حرارتی، صنایع ریلی و بهره‌برداری و نگه‌داری وارد شد. اکنون، فراب یکی از پیمانکاران پیشرو در ایران با سابقه‌ای قابل اطمینان از نظر کیفیت، کارایی، اثربخشی و ایمنی در اجرای پروژه‌های زیربنایی است.',textAlign: TextAlign.justify,textDirection: TextDirection.rtl,),
                          

                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
