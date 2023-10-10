import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Home.dart';

class MagazinList extends StatefulWidget {
  const MagazinList({super.key});

  @override
  State<MagazinList> createState() => _MagazinListState();
}

class _MagazinListState extends State<MagazinList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  homeScrean()))),
        title: const Text('نشریه فراب'),
        centerTitle: true,
      ),
    );
  }
}