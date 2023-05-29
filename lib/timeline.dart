import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

void main() => runApp(const tileLine());

// ignore: camel_case_types
class tileLine extends StatelessWidget {
  const tileLine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Flutter Timeline Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Timeline(
          children: <TimelineModel>[
            TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1397
• آغاز فعالیت رسمی شرکت نفت و گاز فراب
• امضای قرارداد نیروگاه 10 مگاواتی Yala1 در کشور کنیا""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.blue,
            ),
            TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1395
• آغاز احداث اولین نیروگاه حرارتی با توربین کلاس F در فراب""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1394
• امضای قرارداد احداث سد و نیروگاه آبی 37.6 مگاواتی درالوک ۲ در کردستان عراق
 (پروژه بازسازی مخزن نفت بصره در عراق)""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1393
• امضای قرارداد نیروگاه آبی 5.2 مگاواتی Terem در کشور کنیا""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1392
• انعقاد قرارداد احداث جاده کلار به کفری در عراق""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1391
• تاسیس شرکت بهره‌برداری و نگه‌داری فراب""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1390
• انعقاد قرارداد اولین پروژه نیروگاه حرارتی در خارج از کشور (پروژه فاز دوم نیروگاه حرارتی 320 مگاواتی الصدر در عراق)""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1389
• انعقاد قرارداد بخش سیویل نیروگاه آبی کینداروما در کشور کنیا""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1387
• امضای قرارداد سومین پروژه خارج کشور (طرح سد، تونل و نیروگاه اومااویا در کشور سریلانکا)""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
                        TimelineModel(
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("""1386
• مبادله قرارداد دومین پروژه خارج کشور (پروژه نیروگاه آبی 25 مگاواتی تانا در کشور کنیا)""",textDirection: TextDirection.rtl,),
                ),
              ),
              icon: const Icon(Icons.check),
              iconBackground: Colors.cyan,
            ),
          ],
          position: TimelinePosition.Left,
          iconSize: 40,
          lineColor: Colors.blue,
        ) //TimelinePage(title: 'Muslim Civilisation Doodles'),
        );
  }
}