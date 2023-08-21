import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tavanmandi extends StatefulWidget {
  const Tavanmandi({super.key});

  @override
  State<Tavanmandi> createState() => _TavanmandiState();
}

class _TavanmandiState extends State<Tavanmandi> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
   
    return Scaffold(
        

      appBar: AppBar(
        title: Title(color: Colors.white, child: const Text('درباره فراب')),
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

const Padding(
  padding: EdgeInsets.all(8.0),
  child:   Text('فراب با همکاری شرکت‌های زیرمجموعه و شرکای بین‌المللی خود به خوبی به عنوان یک پیمانکار عمومی در بازارهای در حال رشد داخلی، منطقه‌ای و بین‌المللی عمل می‎کند. محدوده خدمات وی عبارتند از:مدیریت پروژهفراب مدیریت شرکت‌های زیرمجموعه و پروژه‌ها را با آزادی و اختیار متناسب با مسئولیت‌های واگذار شده به مدیران شرکت‌ها و پروژه‌ها می‌سپارد. به علاوه، مدیران ارشد شرکت، روش‌های مدیریت پروژه را به شرح زیر به کار می‌گیرند تا قادر باشند پروژه‌ها را به شکل صحیح اجرا نمایند:تشکیل سازمان اجرا برای هر پروژهتقسیم قرارداد اصلی میان پیمانکاران در قالب قراردادهای تامین، نصب و راه‌اندازی',textAlign: TextAlign.justify,textDirection: TextDirection.rtl,style: TextStyle(height: 2.3,fontSize: 14),),
)
         

        ],
    ),
    ),
    );
  }
}