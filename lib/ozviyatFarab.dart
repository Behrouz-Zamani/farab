import 'package:farab/views/custom_ozviyat.dart';
import 'package:flutter/material.dart';

import 'models/ozviyat_model.dart';


class OzviyatList extends StatefulWidget {
  const OzviyatList({super.key});

  @override
  State<OzviyatList> createState() => _OzviyatListState();
}

class _OzviyatListState extends State<OzviyatList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
            title: Title(color: Colors.white, child: const Text('عضویت فراب')),

      ),

      body:  ListView.builder(
          itemCount :hozviyatList.length,
          itemBuilder: (context ,index)=> CustomOzviyat(hozviyatList[index],context),
          ));


  }
}