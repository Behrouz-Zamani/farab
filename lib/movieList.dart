
// ignore_for_file: file_names

import 'package:farab/azimivideos.dart';
import 'package:farab/vakilimoview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const mainvideo());
}

// ignore: camel_case_types
class mainvideo extends StatelessWidget{
  const mainvideo({super.key});

@override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // English
      ],
       theme: ThemeData(fontFamily: 'vazir') ,
      debugShowCheckedModeBanner: false,
      home: const MainMoview(),
    );
  }


}

class MainMoview extends StatefulWidget {
  const MainMoview({
    Key? key,
  }) : super(key: key);

  @override
  State<MainMoview> createState() => _MainMoview();
}
class _MainMoview extends State<MainMoview> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _customClipper(),
          child: Container(height: 150,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff000b49),
          child: const Center(
            child: Text("تلویزیون فراب",style: TextStyle(color: Colors.white,fontSize:24),)),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height /1.2,
                  child: 
                  ListView(
                    children: [
                      Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: InkWell(
                              child: Text("پیام نوروزی دکتر وکیلی"),
),
                          ),
                          InkWell(
                            child: Container(
                               
                              width: size.width /4,
                              height: 116,
                                      decoration: BoxDecoration(
                                        boxShadow:const <BoxShadow>[
                                          BoxShadow(blurRadius: 2.0,color: Colors.black),
                                        ],
                                        color: Colors.white,
                                        image: const DecorationImage(
                                        image: AssetImage("assets/images/vakili.jpg"),
                                        fit: BoxFit.cover    
                                        ),
                                         borderRadius: BorderRadius.circular(12.0),
                                       ),                           
                            ),
                                                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const mainvideos()));
                                              }
                          ),
        
                        ],
                      ),
                      const SizedBox(height: 24,),
                                          Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("مصاحبه با دکتر عظیمی معاون حقوقی"),
                          ),
                          InkWell(
                            child: Container(
                               
                              width: size.width /4,
                              height: 116,
                                      decoration: BoxDecoration(
                                        boxShadow:const <BoxShadow>[
                                          BoxShadow(blurRadius: 2.0,color: Colors.black),
                                        ],
                                        color: Colors.white,
                                        image: const DecorationImage(
                                        image: AssetImage("assets/images/azimi.jpg"),
                                        fit: BoxFit.cover    
                                        ),
                                         borderRadius: BorderRadius.circular(12.0),
                                       ),         
                                                                                                                       
                            ),

                             onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                azimivideo()));
                                                } 
                          ),
        
                        ],
                      ),
                                          const SizedBox(height: 24,),
                                          Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("پیام نوروزی دکتر وکیلی"),
                          ),
                          Container(
                             
                            width: size.width /4,
                            height: 116,
                                    decoration: BoxDecoration(
                                      boxShadow:const <BoxShadow>[
                                        BoxShadow(blurRadius: 2.0,color: Colors.black),
                                      ],
                                      color: Colors.white,
                                      image: const DecorationImage(
                                      image: AssetImage("assets/images/vakili.jpg"),
                                      fit: BoxFit.cover    
                                      ),
                                       borderRadius: BorderRadius.circular(12.0),
                                     ),                           
                          ),
        
                        ],
                      ),
                                          const SizedBox(height: 24,),
                                          Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("مصاحبه با دکتر عظیمی معاون حقوقی"),
                          ),
                          Container(
                             
                            width: size.width /4,
                            height: 116,
                                    decoration: BoxDecoration(
                                      boxShadow:const <BoxShadow>[
                                        BoxShadow(blurRadius: 2.0,color: Colors.black),
                                      ],
                                      color: Colors.white,
                                      image: const DecorationImage(
                                      image: AssetImage("assets/images/azimi.jpg"),
                                      fit: BoxFit.cover    
                                      ),
                                       borderRadius: BorderRadius.circular(12.0),
                                     ),                           
                          ),
        
                        ],
                      ),
                                          const SizedBox(height: 24,),
                                          Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("پیام نوروزی دکتر وکیلی"),
                          ),
                          Container(
                             
                            width: size.width /4,
                            height: 116,
                                    decoration: BoxDecoration(
                                      boxShadow:const <BoxShadow>[
                                        BoxShadow(blurRadius: 2.0,color: Colors.black),
                                      ],
                                      color: Colors.white,
                                      image: const DecorationImage(
                                      image: AssetImage("assets/images/vakili.jpg"),
                                      fit: BoxFit.cover    
                                      ),
                                       borderRadius: BorderRadius.circular(12.0),
                                     ),                           
                          ),
        
                        ],
                      ),

                      
                    ],
                  ),
                ),
              )
        
            ],
        
              ),
        )
    ),
    );
  }
}

// ignore: camel_case_types
class _customClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
double height = size.height;
double width = size.width;
var path=Path();
path.lineTo(0, height -50);
path.quadraticBezierTo(width/2, height, width, height -50);
path.lineTo(width, 0);
path.close();
return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
return true;
  }

}