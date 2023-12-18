import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'component/decoration.dart';

class radioAsli extends StatefulWidget {
  const radioAsli({super.key});

  @override
  State<radioAsli> createState() => _radioAsliState();
}

class _radioAsliState extends State<radioAsli> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    IconData btnIcon=Icons.play_arrow_rounded;
    return Scaffold(
      appBar: AppBar(title: Text('رادیو فراب')),
      body:Stack(
        children: [
           SafeArea(
          child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/1371.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (((context, index) {
                    return Padding(

                      padding:  EdgeInsets.all(8.0),
                     
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x00212121),
                              blurRadius: 8.0,
                            ),
                            
                          ],
                        ),
                        child: Row(
                          
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                              ImageIcon(Image.asset('assets/images/mic.png').image,color:Colors.indigo[800]),
                              // const SizedBox(width: 32.0,),
                              const Text('رادیو فراب'),
                              ],
                            ),
                      
                          IconButton(onPressed:() {}, icon: Icon(btnIcon))
                          ],
                        ),
                      ),
                    );
                  })))),

                  //ایزار نمایش و کنترل رادیو
                  Positioned(
                    bottom: 8.0,
                    top: 8.0,
                    right: 8.0,
                    left: 8.0,
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 9,
                        decoration: MyDecorations.mainGradient,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LinearPercentIndicator(
                                percent: 1.0,
                                backgroundColor: Colors.white,
                                progressColor: Colors.amber[300],
                        
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.skip_previous,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.white,
                                    size: 48.0,
                                  ),
                                  Icon(
                                    Icons.skip_next,
                                    color: Colors.white
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  )
        ],
      )),
        ],
      )
    );
  }
}
