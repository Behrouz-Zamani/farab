// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:farab/models/CopmanyModel.dart';
class CompanyPage extends StatelessWidget{

final CompanyModel company;
// ignore: use_key_in_widget_constructors
const CompanyPage(this.company);


  @override
  Widget build(BuildContext context ){
    var size=MediaQuery.of(context).size;
    return Scaffold(
appBar: AppBar(
  title: Text(company.name),
),

body: Padding(padding: 
const EdgeInsets.all(8.0),

child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  
  children: [
    
      Container(
  
        height: 200.0,
  
        width: double.infinity,
  
        decoration: BoxDecoration(
  
          image: DecorationImage(
  
            image:  AssetImage(company.img),
  
            fit: BoxFit.cover
  
          ),
  
        borderRadius: BorderRadius.circular(12.0),
  
        ),
        
  
      ),
            const SizedBox(height: 8.0,),
 Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                 InkWell(
                  child: Text('آدرس',style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 3, 1, 112),fontFamily: 'vazir',fontSize: 18),),
                  // onTap: ()  {
                  //   Navigator.push(
                  //     context,
                  //    // MaterialPageRoute(builder: (context) => const eftekharatFarab())
                  //   );
                  // },
                  ),
               // Text('تاریخچه فراب'),
                InkWell(
                  child: Text('شبکه های اجتماعی',style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 3, 1, 112),fontFamily: 'vazir',fontSize: 18),),

                  // onTap: ()  {
                  //   Navigator.push(
                  //     context,
                  //     //MaterialPageRoute(builder: (context) => const ozviyatFarab())
                  //   );
                  // },
                  ),
              ],
            ),
  
      Expanded(
        child: Container(
        height: size.height /1.9,
          padding: const EdgeInsets.all(6.0),
        
        
          child: SingleChildScrollView(child: Text(company.detail,textDirection: TextDirection.rtl, style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 16,height: 2.2 ),)),
        
        ),
      ),

    ],
  
),
),

    );
  }
}