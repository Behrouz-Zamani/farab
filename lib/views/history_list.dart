import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../Company_Detail.dart';
import '../eftekharatFarab.dart';
import '../models/CopmanyModel.dart';
import '../models/history_model.dart';
import '../ozviyatFarab.dart';
import 'custom_history.dart';

class HostoryList extends StatefulWidget {
  const HostoryList({super.key});

  @override
  State<HostoryList> createState() => _HostoryListState();
}

class _HostoryListState extends State<HostoryList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.white, child: const Text('تاریخچه فراب')),
        ),
        body: SafeArea(
          child: Column(
            children: [
              //عکس بالایی
              SizedBox(
                width: double.infinity,
                height: size.height / 2.8,
                child: Stack(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: size.height / 2,
                        child: Image.asset("assets/images/lfarab.gif")),
                    const Positioned(
                      right: 0,
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(
                width: double.infinity,
                height: 64,
                child: Container(
                  width: double.infinity,
                  height: 64,
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        InkWell(
                          child: const Text(
                            'دهه چهارم',
                            style: TextStyle(fontFamily: 'vazir'),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const eftekharatFarab()));
                          },
                        ),
                        // Text('تاریخچه فراب'),
                        InkWell(
                          child: const Text(
                            'دهه سوم',
                            style: TextStyle(fontFamily: 'vazir'),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OzviyatList()));
                          },
                        ),
                                                InkWell(
                          child: const Text(
                            'دهه دوم',
                            style: TextStyle(fontFamily: 'vazir'),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OzviyatList()));
                          },
                        ),
                        InkWell(
                          child: const Text('دهه اول',
                              style: TextStyle(fontFamily: 'vazir')),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HostoryList()));
                          },
                        ),
                      ],
                    ),
                  ),
                )),
              //لیست شرکت ها
            Container(
              width: double.infinity,
              height: size.height / 2.5,
              //color: Colors.yellow,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    child: Expanded(
                        child: Text(
                  'شرکت فراب، به عنوان پیمانکار اصلی احداث نیروگاه‌های آبی در ایران، فعالیت خود را از سال 1371 آغاز نمود. موفقیت در کسب و کار محوری، فراب را به گسترش محدوده فعالیت‌هایش ترغیب نمود و این شرکت گام به گام در پروژه‌های نفت، گاز و پتروشیمی، نیروگاه حرارتی، صنایع ریلی و بهره‌برداری و نگه‌داری وارد شد. اکنون، فراب یکی از پیمانکاران پیشرو در ایران با سابقه‌ای قابل اطمینان از نظر کیفیت، کارایی، اثربخشی و ایمنی در اجرای پروژه‌های زیربنایی است.',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontSize: 16, fontFamily: 'vazir', height: 2),
                ))),
              ),
            )
            ],
          ),
        ));
  }
}
