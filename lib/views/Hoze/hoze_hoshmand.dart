import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../videoNaft.dart';

class HozeHoshmand extends StatefulWidget {
  const HozeHoshmand({super.key});

  @override
  State<HozeHoshmand> createState() => _HozeHoshmandState();
}

class _HozeHoshmandState extends State<HozeHoshmand> {
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
        title: const Text('شبکه‌های هوشمند'),
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
                      image: Image.asset('assets/images/hoshmand.jpg').image,
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
                        //     'مترمکعب در روز ظرفیت تولید',
                        //     style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                        //   ),
                        //   onTap: () {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text(
                        //              'مترمکعب در روز ظرفیت تولید',
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //               content: Text(
                        //                 '1',
                        //                 textDirection: TextDirection.rtl,
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 120/000, color: Colors.red),
                        //               ),
                        //             ));
                        //   },
                        // ),
                        // InkWell(
                        //   child: const Text(
                        //     'پروژه در حال اجرا',
                        //     style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                        //   ),
                        //   onTap: () {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text(
                        //                 'پروژه در حال اجرا',
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //               content: Text(
                        //                 '9',
                        //                 textDirection: TextDirection.rtl,
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 32, color: Colors.red),
                        //               ),
                        //             ));
                        //   },
                        // ),
                        // InkWell(
                        //   child: const Text('پروژه خاتمه یافته',
                        //       style:
                        //           TextStyle(fontFamily: 'vazir', fontSize: 12)),
                        //   onTap: () {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text(
                        //                 'پروژه خاتمه یافته',
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //               content: Text(
                        //                 '5',
                        //                 textDirection: TextDirection.rtl,
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 32, color: Colors.red),
                        //               ),
                        //             ));
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ),
              )),
          //باکس پایین
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(125, 213, 203, 159),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                width: double.infinity,
                height: size.height / 2.4,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                         '''پس از اجرا و بهره‌برداری موفق از پروژه‌های آزمایشی 2000*2 نقطه اندازه‌گیری هوشمند برق (پروژه فهام) در استان‌های زنجان و بوشهر توسط شرکت فراب، پروژه فهام وارد فاز اجرایی شد و در حال حاضر بیش از 50,000 نقطه اندازه‌گیری هوشمند برق، توسط شرکت فراب در 13 شرکت توزیع برق در 11 استان راه‌اندازی شده و در حال بهره‌برداری است. پروژه‌های در حال اجرای شرکت فراب در حوزه کنتورهای هوشمند برق تا نصب و راه‌اندازی 350,000 کنتور هوشمند ادامه خواهد یافت.

راهکار جامع زیرساخت هوشمند اندازه‌گیری (AMI Total Solution) فراب، شامل کنتورهای هوشمند برق (انواع متفاوت کنتورهای هوشمند تک فاز و سه فاز)، GPRS، مودم‌های ارتباطی RF و سخت‌افزار و نرم‌افزار سیستم مرکزی (Head-End, MDM) می‌باشد. نرم‌افزار سیستم مرکزی فراب به عنوان بخشی از این راه‌حل جامع کاملا توسط تیم نرم‌افزاری شرکت فراب و در داخل ایران تهیه شده است. این نرم‌افزار قادر است با هفت میلیون نقطه اندازه‌گیری کار کند و حجم داده زیاد (big data) را مدیریت نماید. سخت‌افزار و نرم‌افزار سیستم مرکزی تامین شده توسط فراب از نظر امنیت توسط یک شرکت ثالث تست نفوذ شده و گواهی امنیت دریافت نموده است. به علاوه، مودم‌های ارتباطی RF خاصی با نرم‌افزار سرور شبکه فراب برای اولین بار در ایران توسط شرکت فراب طراحی و توسعه داده شده است. مودم‌های مذکور بر روی تعدادی از کنتورهای هوشمند برق نصب شده و در حال بهره‌برداری آزمایشی و انجام تست‌های تکمیلی هستند. درصورت موفقیت در دوره آزمایشی و انجام تست‌های مرتبط، مودم‌های ذکر شده جایگزین مناسبی برای مودم‌های GPRS موجود در مناطقی که تحت پوشش مناسب مخابرات نیستند، خواهند بود. علاوه بر آن، هزینه مربوط به انتقال داده از طریق مودم‌های RF به میزان قابل توجهی کمتر از مودم‌های GPRS خواهد بود.

با توجه به تجربه ارزشمند و گرانبهای به دست آمده در طراحی و اجرای پروژه‌های کنتورهای هوشمند برق در ایران، اکنون، فراب در نظر دارد تا کنتورهای آب و گاز را در راه‌حل جامع خود تحت پوشش قرار دهد و در بازارهای جهانی به عنوان یک شرکت ارائه‌دهنده راه‌حل‌های جامع اندازه‌گیری هوشمند حضور یابد.'''
                          ,
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 14, height: 2.2),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Container(
                      //         width: 105,
                      //         height: 105,
                      //         decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(16),
                      //             boxShadow: const [
                      //               BoxShadow(
                      //                 color: Colors.black12,
                      //                 blurRadius: 3.0,
                      //               )
                      //             ]),
                      //         child: InkWell(
                      //             child: Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.center,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.center,
                      //                 children: [
                      //                   Image.asset(
                      //                     "assets/images/solar.png",
                      //                     width: 75,
                      //                     height: 75,
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                   const Text(
                      //                       'پروژه‌های نیروگاه خورشیدی',
                      //                       textDirection:
                      //                           TextDirection.rtl,
                      //                       textAlign: TextAlign.center,
                      //                       style: TextStyle(
                      //                           overflow:
                      //                               TextOverflow.fade,fontSize: 12))
                      //                 ]),
                      //             onTap: () => {
                      //                   Navigator.push(
                      //                       context,
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               Naftvideo()))
                      //                 }),
                      //       ),
                      //       Container(
                      //         width: 105,
                      //         height: 105,
                      //         decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(16),
                      //             boxShadow: const [
                      //               BoxShadow(
                      //                 color: Colors.black12,
                      //                 blurRadius: 3.0,
                      //               )
                      //             ]),
                      //         child: InkWell(
                      //             child: Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.center,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.center,
                      //                 children: [
                      //                   Image.asset(
                      //                     "assets/images/power-plant.png",
                      //                     width: 65,
                      //                     height: 65,
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                   const Text(
                      //                       'پروژه ‌های نیروگاه حرارتی',
                      //                       textDirection:
                      //                           TextDirection.rtl,
                      //                       textAlign: TextAlign.center,
                      //                       style: TextStyle(
                      //                           overflow:
                      //                               TextOverflow.fade,fontSize: 12))
                      //                 ]),
                      //             onTap: () => {
                      //                   Navigator.push(
                      //                       context,
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               Naftvideo()))
                      //                 }),
                      //       ),
                      //       Container(
                      //         width: 105,
                      //         height: 105,
                      //         decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(16),
                      //             boxShadow: const [
                      //               BoxShadow(
                      //                 color: Colors.black12,
                      //                 blurRadius: 3.0,
                      //               )
                      //             ]),
                      //         child: InkWell(
                      //             child: Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.center,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.center,
                      //                 children: [
                      //                   Image.asset(
                      //                     "assets/images/abi.png",
                      //                     width: 75,
                      //                     height: 75,
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                   const Padding(
                      //                     padding: EdgeInsets.only(
                      //                         left: 8, right: 8),
                      //                     child: Text(
                      //                       'پروژه‌های نیروگاه آبی',
                      //                       textDirection:
                      //                           TextDirection.rtl,
                      //                       textAlign: TextAlign.center,
                      //                       style: TextStyle(
                      //                           overflow:
                      //                               TextOverflow.fade,fontSize: 12),
                      //                     ),
                      //                   )
                      //                 ]),
                      //             onTap: () => {
                      //                   Navigator.push(
                      //                       context,
                      //                       MaterialPageRoute(
                      //                           builder: (context) =>
                      //                               Naftvideo()))
                      //                 }),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
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
