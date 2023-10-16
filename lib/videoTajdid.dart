import 'package:flutter/material.dart';

import 'models/video_model.dart';

class videoTajdid extends StatefulWidget {
   videoTajdid({super.key});

  @override
  State<videoTajdid> createState() => _videoTajdidState();
}

class _videoTajdidState extends State<videoTajdid> {
       List<VideosModels>? movielsit;

       var isLoaded=false;


  @override
  void initState(){
    super.initState();
    getData();
  }

getData() async
{
 // movielsit =await RemoteService().gettajdidmovie();
  if(movielsit != null)
  {
    setState(() {
      isLoaded=true;

    });
  }
}

  final items = [
  ListTile(
title: Text('Item 1'),
),
  ListTile(
  title: Text('Item 2'),
),
  ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
    ListTile(
    title: Text('Item 3'),
    
  ),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea
      (
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
                child:
                Visibility(
                  visible: isLoaded,
                  child: ListView.builder(
                  itemCount:movielsit?.length,
                  itemBuilder: (context, indext) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 16.0, bottom: 8.0, right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 159, 145, 42),
                        ),
                        height: 64,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                   // onTap: () => _playVideo(index: indext),
                                    child: Text(
                                     movielsit![indext].id.toString(),
                                          style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'vazir',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                              ),

                             // replacement:const Center(child: CircularProgressIndicator(),),
                ),
// ListWheelScrollView(
//   itemExtent: 75,
//   children: items,
// )
              
            )
          ],
        ),
      ),
    );
  }
}