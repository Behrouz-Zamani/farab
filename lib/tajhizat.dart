// ignore_for_file: file_names

import 'package:farab/Company_Farab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const tajhisat());
}

// ignore: camel_case_types
class tajhisat extends StatelessWidget {
  const tajhisat({super.key});

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
        title: const Text('شرکت ساخت تجهیزات فراب'),
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
                        Text("""شرکت ساخت تجهیزات فراب در سال 1379 با نام «شرکت مهندسی و مدیریت ساخت توربین‎های برق آبی (توبا)» توسط شرکت فراب و با هدف انتقال دانش و تکنولوژی طراحی، مهندسی و ساخت تجهیزات نیروگاه‌های آبی با استفاده از منابع ساخت داخلی در ایران تاسیس شد. این شرکت، دانش طراحی انواع متعدد تجهیزات توربین آبی و شیر پروانه‌ای نیروگاه‌های آبی را در اختیار دارد. به علاوه از سوابق کاری خوبی در زمینه شبیه‌سازی سیستم‌های تهویه تونلی ریلی و جاده‌ای برخوردار است. شرکت ساخت تجهیزات فراب، تاکنون با همکاری سازندگان داخلی، تجهیزات نیروگاهی شامل توربین‌های آبی، دریچه‌های ورودی، ژنراتور، تجهیزات مکانیکی آبی، جرثقیل دروازه‌ای و سقفی، مخازن تحت فشار، سازه‌های فلزی و تجهیزات یوتیلیتی بویلر، در مجموع به وزن 40,000 تن، را به کارفرمایان خود تحویل داده است.

شرکت ساخت تجهیزات فراب با توجه به عدم تملک کارخانه و یا کارگاه ساخت تجهیزات، تلاش نموده است با شرکت‌های سازنده کوچک و متوسط، تعامل مناسبی را به منظور تکمیل زنجیره تامین تجهیزات برقرار نماید تا علاوه بر کاهش هزینه‌ها و رعایت الزامات کیفی بتوانند به راحتی تغییرات طراحی مد نظر کارفرما را طی فرایند ساخت اعمال نمایند. از طرف دیگر، با افزایش انعطاف‌پذیری این مجموعه­‌ها بتوان به راحتی هر تجهیز را به چند بخش تقسیم نموده و ساخت هر بخش را در یک یا چند کارگاه انجام داد تا بدین ترتیب، علاوه بر افزایش سرعت ساخت، از تخصص، امکانات، ظرفیت کارخانه و یا کارگاه‌­های ساخت مختلف به نحو مطلوبی استفاده نمود.""",
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
