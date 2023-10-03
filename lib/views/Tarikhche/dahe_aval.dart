import 'package:farab/views/history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class Daheaval extends StatefulWidget {
  const Daheaval({super.key});

  @override
  State<Daheaval> createState() => _DaheavalState();
}

class _DaheavalState extends State<Daheaval> {
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
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HostoryList()))),
        title: const Text('تاریخچه دهه اول فراب'),
        centerTitle: true,
      ),
body: Column(
  children: [
    Container(
      width:double.infinity,
      height: size.height / 3,
      color: Colors.blueGrey,
    ),

    Expanded(
      child: Container(
        width: double.infinity,
        height:size.height /3,
        color: Colors.amber,
      ),
    ),
  ],
),

    );
    
  }
}
