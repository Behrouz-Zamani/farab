import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'Home.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget{
  const splashScreen({super.key});


  @override
  State<splashScreen> createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
 
 @override
 void initState(){
  
  Future.delayed(const Duration(seconds: 4)).then((value)  {
    
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const homeScrean()));
  });


  super.initState();
 }
 
  @override
  Widget build(BuildContext context){
      

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
               Image(image: AssetImage('assets/images/farab-logo-header.png'),height: 132,),

              SizedBox(height: 48,),
              SpinKitFadingCube(
              color: Color.fromARGB(255, 14, 6, 114),
              size: 50.0,),
            ],
          ),
        ),
      ),
      );
  }
}