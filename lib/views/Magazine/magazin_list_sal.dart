import 'package:farab/models/magazin_model.dart';
import 'package:farab/views/Magazine/magazin_detail.dart';
import 'package:flutter/material.dart';

class MagazinSalListFarab extends StatelessWidget {
 final String salnumber;
   MagazinSalListFarab({required this.salnumber ,Key? key}):super(key: key);



  
  @override
  Widget build(BuildContext context) {
 var ss;

// if(salnumber == "1399")
// {
//   ss= magazinlist;
// }
// else if (salnumber == "1400")
// {
//   ss = twomagazinlist;
// } 
// else if(salnumber == "1400'")
// {
//   ss=onemagazinlist;
// }
switch (salnumber){
    case "1397":
  ss= emagazinlist;
  break;

    case "1398":
  ss= wmagazinlist;
  break;

  case "1399":
  ss= qmagazinlist;
  break;
  case "1400":
  ss=twomagazinlist;
  break;
  case "1401":
  ss=onemagazinlist;
  break;
    case "1402":
  ss=rmagazinlist;
  break;
}

    return Scaffold(
      appBar: AppBar(title:  Text('Magazin Sal'  '$ss'),),
body: ListView.builder(

  itemCount:ss.length,

   itemBuilder: (context,index){


    Magazine magazinsalo=ss [index];





    return Card(
      child: 
      ListTile(title:Text(magazinsalo.sal),
        subtitle: Text(magazinsalo.name),
        // subtitle: Text(salnumber),
        leading: Image.network(magazinsalo.img),
        trailing: const Icon(Icons.remove_red_eye_outlined),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MagazinDetail(magazinsalo)));
        } ,
      ),
      
    );
   }),
    );
  }
  }