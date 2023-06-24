// ignore_for_file: file_names

import 'package:farab/Home.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Company_Detail.dart';
import 'models/CopmanyModel.dart';


void main() {
  runApp(const Company_Frab());
}

// ignore: camel_case_types
class Company_Frab extends StatelessWidget {
  const Company_Frab({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
            localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // English
      ],
      home: MainCompany(),
    );
  }
}
class MainCompany extends StatefulWidget {
  const MainCompany({
    Key? key,
  }) : super(key: key);

  @override
  State<MainCompany> createState() => _MainPageState();
}

class _MainPageState extends State<MainCompany> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //عکس بالایی
          SizedBox(
            //  color: Color.fromARGB(255, 120, 183, 241),
            width: double.infinity,
            height: size.height / 2.8,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height / 2,
                  child: 

                         ImageSlideshow(indicatorColor: Colors.blue,onPageChanged: (value){
                            debugPrint('page change :$value');
                          },
                                    autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'assets/images/niro.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/gaz.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/reil.jpg',
              fit: BoxFit.cover,
            ),
          ],
                          
                          
                          
                          )
                ,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         InkWell(
                             child: Container(
                               width: 36,
                               height: 36,
                               decoration: const BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Color.fromARGB(139, 253, 250, 250)),
                               child: const Icon(CupertinoIcons.home),
                             ),
                             onTap: () {
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) => const homeScrean()));
                             }),
                          // InkWell(
                          //     child: Container(
                          //       width: 36,
                          //       height: 36,
                          //       decoration: const BoxDecoration(
                          //           shape: BoxShape.circle,
                          //           color: Color.fromARGB(139, 253, 250, 250)),
                          //       child: const Icon(CupertinoIcons.home),
                          //     ),
                          //     onTap: () {
                          //       Navigator.push(
                          //          context,
                          //          MaterialPageRoute(
                          //              builder: (context) => const myApp()));
                          //     }),
                        ]),
                  ),
                ),
              ],
            ),
          ),
const SizedBox(height: 24,),
          //لیست شرکت ها
          SizedBox(
            width: double.infinity,
            height: 400,
            child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(crossAxisCount:  3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a4.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[0])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a3.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[1])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a5.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[2])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a7.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[4])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a6.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[3])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a1.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[5])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a8.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[6])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a9.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[7])));}),),
                // ignore: avoid_unnecessary_containers
                Container(child: InkWell(child: Image.asset("assets/images/a10.jpg",fit: BoxFit.cover,),onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => CompanyPage(companyModel[8])));}),),

                
              ],),
            )

            
          ),



        ],
      )),
    );
  }
}

