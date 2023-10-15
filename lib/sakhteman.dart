// ignore_for_file: file_names

import 'package:farab/Company_Farab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const sakhteman());
}

// ignore: camel_case_types
class sakhteman extends StatelessWidget {
  const sakhteman({super.key});

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
        title: const Text('شرکت ساختمان و نصب فراب'),
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
شرکت ساختمان و نصب فراب در سال 1387 با نام «شرکت نوتاش افرا» توسط فراب تاسیس شد. فلسفه تاسیس این شرکت، نصب تجهیزات نیروگاه‌های آبی، حرارتی و سیکل ترکیبی و پروژه‌های صنایع ریلی و نفت، گاز و پتروشیمی با استفاده از تجربه و مهارت ایجاد شده در گروه‌های اجرایی کارگاه‌ها بود. این شرکت تاکنون بیش از 20 پروژه در حوزه‌های نامبرده اجرا کرده است. شرکت ساختمان و نصب فراب با تکیه بر نیروی انسانی با تجربه و ماهر خود و همچنین ابزار مناسب در احداث و نصب تجهیزات مکانیکی (ثابت و دوار) و الکتریکی و نیز عملیات سیویل صنعتی فعال است. این شرکت به طور جدی در ارتقای قابلیت‌های اجرایی و فنی و توسعه حوزه‌های کاری خود تلاش می‌نماید. هدف ما، تبدیل شدن به یک شرکت پیشرو در حوزه نصب و اجرای عملیات سیویل صنعتی پروژه‌های بزرگ و زیربنایی است.

اهداف و راهبردها:

شرکت ساختمان و نصب فراب کسب رضایت مشتریان را سرلوحه اهداف خود قرار داده و به منظور نیل به این هدف، اقدامات زیر را در دستور کار خود قرار داده است:

انتقال دانش فنی متخصصان خارجی به شرکت از طریق همکاری و نظارت در مراحل مختلف پروژه‌ها
ارتقای کیفیت فعالیت‌های اجرایی پروژه‌ها با تاسیس و تقویت واحدهای کنترل کیفی و اطمینان از مرغوبیت
برنامه‌ریزی اجرایی برای تحقق اهداف پروژه‌ها در کوتاهترین زمان ممکن
تجهیز شرکت به تجهیزات و ابزارآلات ویژه و روزآمد برای نصب و راه‌اندازی
دستاوردهای شرکت:

پاسخگویی به نیازهای پروژه‌های مختلف با افزایش انعطاف سازمانی و به‌کارگیری آمیزه‌ای از تیم‌های اجرایی، گروه‌های امانی و پیمانکاران توانمند
کاهش زمان اجرای پروژه‌های نیروگاه‌های برق آبی، از جمله پروژه‌های اجرا شده در کشورهای کنیا و تاجیکستان
انتقال دانش فنی متخصصان خارجی و جایگزین نمودن آنها با کارشناسان ایرانی
تجهیز شرکت به ادوات خاص تست و اندازه‌گیری که پیش از این در اختیار شرکت‌های داخلی و خارجی محدودی قرار داشته است
ایجاد سازمانی مجرب و متخصص جهت نصب و راه‌اندازی پروژه‌های نیروگاه آبی و حرارتی، نفت، گاز و پتروشیمی و صنایع ریلی
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
