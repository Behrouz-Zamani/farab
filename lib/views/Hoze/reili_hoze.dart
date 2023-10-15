import 'package:farab/Home.dart';
import 'package:farab/activity_farab.dart';
import 'package:flutter/material.dart';


class ReiliHozeFarab extends StatefulWidget {
  const ReiliHozeFarab({super.key});

  @override
  State<ReiliHozeFarab> createState() => _ReiliHozeFarabState();
}

class _ReiliHozeFarabState extends State<ReiliHozeFarab> {
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
        title: const Text('حوزه صنایع ریلی فراب'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height / 3.9,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: size.height / 3.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/images/reil.jpg').image,
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
                        //     'واحد های تکمیل شده',
                        //     style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                        //   ),
                        //   onTap: () {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text(
                        //                 'واحد های نیروگاهی تکمیل شده',
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //               content: Text(
                        //                 '86',
                        //                 textDirection: TextDirection.rtl,
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 32, color: Colors.red),
                        //               ),
                        //             ));
                        //   },
                        // ),
                        // Text('تاریخچه فراب'),
                        InkWell(
                          child: const Text(
                            'ایستگاه در حال بهره برداری',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'ایستگاه در حال بهره برداری',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '22',
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
                            'طول مسیر',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 12),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'کیلومتر طول مسیر',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '141',
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.red),
                                      ),
                                    ));
                          },
                        ),
                        InkWell(
                          child: const Text('ایستگاه',
                              style:
                                  TextStyle(fontFamily: 'vazir', fontSize: 12)),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text(
                                        'ایستگاه',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        '55',
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
              //height: size.height / 2.5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'توسعه صنایع ریلی، یکی از پیش‌نیازهای توسعه پایدار شهرهای بزرگ ایران است. فراب در سال 1388 به پشتوانه تجربیات موفق خود در سایر بخش‌های صنعتی و داخلی تصمیم گرفت تا در این حوزه ورود نماید.',
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
                                        "assets/images/farab-logo-header.png",
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.contain,
                                      ),
                                      const Text(
                                          'قطار‌شهری گلشهر-هشتگرد',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12))
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
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
                                        "assets/images/farab-logo-header.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.contain,
                                      ),
                                      const Text(
                                          'خط هفت متروی تهران',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12))
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
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
                                        "assets/images/farab-logo-header.png",
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.contain,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          'خطA قطار شهری قم',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12),
                                        ),
                                      )
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
                                    }),
                          ),
                        ],
                      ),
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
                                        "assets/images/farab-logo-header.png",
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.contain,
                                      ),
                                      const Text(
                                          'خط2 قطار شهری مشهد',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12))
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
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
                                        "assets/images/farab-logo-header.png",
                                        width: 65,
                                        height: 65,
                                        fit: BoxFit.contain,
                                      ),
                                      const Text(
                                          'زیرگذر‌راه‌آهن تهران‌-تبریز',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12))
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
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
                                        "assets/images/farab-logo-header.png",
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.contain,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          'خط مترو‌تهران-پرند',
                                          textDirection:
                                              TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              overflow: TextOverflow.fade,
                                              fontSize: 12),
                                        ),
                                      )
                                    ]),
                                onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homeScrean()))
                                    }),
                          ),
                        ],
                      ),
                    )
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
