import 'package:farab/models/history_model.dart';
import 'package:farab/views/history_list.dart';
import 'package:farab/views/tavanmandi.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'eftekharatFarab.dart';
import 'ozviyatFarab.dart';

class AboutFarab extends StatefulWidget {
  const AboutFarab({super.key});

  @override
  State<AboutFarab> createState() => _AboutFarabState();
}

class _AboutFarabState extends State<AboutFarab> {


  @override
  Widget build(BuildContext context) {

        var size = MediaQuery.of(context).size;


    return Scaffold(
        
appBar: AppBar(
leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const homeScrean()))),
  
  title: Text('درباره فراب'),
    centerTitle: true,

  ),
    body: SafeArea(

      child: 
    Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height / 2.6,
            child: Container(
              width: double.infinity,
              height: size.height /2.6,
              color:Colors.amber,
              child: 
              Image(image:Image.asset('assets/images/about.jpg').image , fit: BoxFit.cover,),
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
                  child: const Text('توانمندی ها',style: TextStyle(fontFamily: 'vazir')),

                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tavanmandi())
                    );
                  },
                  ),
                InkWell(
                  child: const Text('گواهینامه‌ها و تقدیرنامه‌ها',style: TextStyle(fontFamily:'vazir'),),
                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const eftekharatFarab())
                    );
                  },
                  ),
               // Text('تاریخچه فراب'),
                InkWell(
                  child: const Text('عضویت ها',style: TextStyle(fontFamily: 'vazir'),),

                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OzviyatList())
                    );
                  },
                  ),
                                  InkWell(
                  child: const Text('تاریخچه فراب',style: TextStyle(fontFamily: 'vazir')),
                  onTap: ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HostoryList())
                    );
                  },
                  ),
              ],),
              ),
            )
          ),
          Container(
        width: double.infinity,
        height: size.height /2.5,
        //color: Colors.yellow,
        child: 
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(child: Expanded(child: Text('شرکت فراب، به عنوان پیمانکار اصلی احداث نیروگاه‌های آبی در ایران، فعالیت خود را از سال 1371 آغاز نمود. موفقیت در کسب و کار محوری، فراب را به گسترش محدوده فعالیت‌هایش ترغیب نمود و این شرکت گام به گام در پروژه‌های نفت، گاز و پتروشیمی، نیروگاه حرارتی، صنایع ریلی و بهره‌برداری و نگه‌داری وارد شد. اکنون، فراب یکی از پیمانکاران پیشرو در ایران با سابقه‌ای قابل اطمینان از نظر کیفیت، کارایی، اثربخشی و ایمنی در اجرای پروژه‌های زیربنایی است.',textDirection: TextDirection.rtl,textAlign: TextAlign.justify,style: TextStyle(fontSize:16,fontFamily: 'vazir',height: 2),))),
        ),
      )

        ],
    ),
    ),
    );
  }
}