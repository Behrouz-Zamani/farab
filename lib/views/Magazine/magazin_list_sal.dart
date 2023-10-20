import 'package:farab/models/magazin_model.dart';
import 'package:farab/views/Magazine/magazin_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MagazinSalListFarab extends StatelessWidget {
  const MagazinSalListFarab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Magazin Sal'),),
body: ListView.builder(
  itemCount:magazinlist.length,
   itemBuilder: (context,index){
    Magazine magazinsal=magazinlist[index];
    return Card(
      child: 
      ListTile(title:Text(magazinsal.sal),
        subtitle: Text(magazinsal.name),
        leading: Image.network(magazinsal.img),
        trailing: const Icon(Icons.remove_red_eye_outlined),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MagazinDetail(magazinsal)));
        } ,
      ),
      
    );
   }),
    );
  }
  }