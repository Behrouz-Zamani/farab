import 'package:flutter/material.dart';

import '../models/history_model.dart';
import 'custom_history.dart';

class HostoryList extends StatefulWidget {
  const HostoryList({super.key});

  @override
  State<HostoryList> createState() => _HostoryListState();
}

class _HostoryListState extends State<HostoryList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
            title: Title(color: Colors.white, child: const Text('تاریخچه فراب')),

      ),

      body:  ListView.builder(
          itemCount :historyList.length,
          itemBuilder: (context ,index)=> CustomHistory(historyList[index],context),
          ));


  }
}