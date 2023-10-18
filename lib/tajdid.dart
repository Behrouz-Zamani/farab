// ignore_for_file: file_names

import 'package:farab/Company_Farab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const tajdid());
}

// ignore: camel_case_types
class tajdid extends StatefulWidget {
  const tajdid({super.key});

  @override
  State<tajdid> createState() => _tajdidState();
}

class _tajdidState extends State<tajdid> {
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
        title: const Text('مدیریت انرژی و توسعه طرح‌های تجدیدپذیر فراب'),
        centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 0, 61, 165),

      ),
      //       appBar: AppBar(
      //   title: const Text('طرح‌های تجدیدپذیر',style: TextStyle(fontSize: 14),),
      //             backgroundColor: const Color.fromARGB(255, 0, 61, 165),

      // ),
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
شرکت مدیریت انرژی و توسعه طرح‌های تجدیدپذیر در سال 1399 با هدف ارتقاء و توسعه کاربردی انرژی‌های تجدیدپذیر و پاک، و مدیریت انرژی به منظور استفاده کارآمد و بهینه از منابع انرژی تشکیل گردیده است. این شرکت با بهره‌گیری از تجربیات شرکت فراب و با نگاه علمی به موضوعات و به کارگیری پرسنل با تجربه و خلاق در خصوص توسعه طرح‌های تجدیدپذیر، در راستای توسعه، اجرا و بهره برداری از پروژه‌های بهینه‌سازی، هوشمندسازی و مدیریت انرژی (اعم از انرژی های فسیلی و نو) حرکت می‌کند و گام‌های موثری در زمینه همکاری در تهیه و تدوین استانداردها و معیارهای مربوط به حوزه فعالیت شرکت برنامه‌ریزی و اجرا کرده است. در این شرکت کوشش شده است تا اطلاعات اساسی و مورد نیاز در رابطه با حوزه‌های فعالیت و خدمات شرکت در اختیار مشتریان، اساتید، پژوهشگران، دانشجویان و صنعتگران قرار گیرد تا با ارتباطی سازنده از نظرات، پیشنهادات و انتقادات ایشان استفاده و انتظارات مشتریان خود را تأمین کرده و زمینه خدمت‌رسانی بهتر را فراهم نماید. در همین راستا، با ارائه خدمات خرید و فروش، صادرات و واردات هرگونه مواد، مصالح، تجهیزات و ماشین آلات تولیدی، مواد اولیه، قطعات نیم ساخته و لوازم یدکی مرتبط با موضوع فعالیت شرکت، اقدام به تسهیل و شتابدهی توسعه زیرساخت‌های فنی و اقتصادی توسعه طرح‌های مدیریت انرژی و محیط زیست، و همچنین تسهیل اجرایی شدن پروژه‌های تجدیدپذیر کرده است.
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
