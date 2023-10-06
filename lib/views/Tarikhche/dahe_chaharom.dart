import 'package:farab/views/history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DaheChaharom extends StatefulWidget {
  const DaheChaharom({super.key});

  @override
  State<DaheChaharom> createState() => _DaheChaharomState();
}

class _DaheChaharomState extends State<DaheChaharom> {
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
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HostoryList()))),
        title: const Text('تاریخچه دهه چهارم فراب'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
              Radius.circular(24),
            )),
            width: double.infinity,
            height: size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: ImageSlideshow(
                  initialPage: 0,

                  indicatorColor: Colors.red,
                  indicatorBackgroundColor: Colors.grey,

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 3000,

                  /// Loops back to first slide.
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/images/1371.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1372.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1379.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1382.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/1384.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 231, 231, 229),
            
                  borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(24),topEnd: Radius.circular(24))
                ),
                width: double.infinity,
                height: size.height / 3,
                child: 
                const SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',textAlign:TextAlign.justify,textDirection: TextDirection.rtl,style: TextStyle(fontFamily: 'vazir',fontSize: 16,height: 2.3),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
