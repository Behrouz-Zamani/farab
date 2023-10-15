// ignore_for_file: file_names

import 'package:farab/Company_Farab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const sarmaye());
}

// ignore: camel_case_types
class sarmaye extends StatelessWidget {
  const sarmaye({super.key});

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
        title: const Text('شرکت تجارت و سرمایه گروه فراب'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                height: 56,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: const Text('شبکه‌های اجتماعی'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              title: Text(
                                'شبکه های اجتماعی',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              content: Text(
                                'شبکه های اجتماعی شرکت ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: const Text('تلفن تماس'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              title: Text(
                                'شماره تماس',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              content: Text(
                                'تلفن تماس شرکت ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: const Text('آدرس شرکت'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              title: Text(
                                'آدرس',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              content: Text(
                                'آدرس شرکت ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 112, 105, 105),
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                width: double.infinity,
                height: size.height / 2.1,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Text(
                          """
شرکت تجارت و سرمایه گروه فراب در سال ۱۳۸۴ با نام «شرکت سرمایه‌گذاری کارکنان فراب» توسط شرکت فراب تاسیس شد. ماموریت اصلی این شرکت، رفع دغدغه نیروی انسانی با ارزش گروه فراب در زمینه کسب منافع و ارزش افزوده‌های موجود در فضای کسب و کار داخل و خارج کشور به نفع سرمایه‌ها و اندوخته‌های ایشان بوده است تا بدین ترتیب ضمن ایجاد یک سازمان کارآفرین و پویا، منافع کوتاه مدت و بلندمدت سهامداران تامین شود. سبد سرمایه‎گذاری این شرکت شامل موارد زیر است:

تامین نیروی انسانی
تامین ماشین‌آلات
معدن
پروژه‌های ساختمانی
مالی، سرمایه و بورس
تجارت و بازرگانی
خدمات
"""
                          ,
                          textAlign: TextAlign.right,
                          style: TextStyle(height: 2.3),
                        ),
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
