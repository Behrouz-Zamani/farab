import 'package:farab/models/project_model.dart';
import 'package:farab/views/custom_project.dart';
import 'package:flutter/material.dart';

import 'models/ozviyat_model.dart';


class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
            title: Title(color: Colors.white, child: const Text('پروژه های  فراب')),

      ),

      body:  ListView.builder(
          itemCount :hozviyatList.length,
          itemBuilder: (context ,index)=> CustomProject(projectlist[index],context),
          ));


  }
}