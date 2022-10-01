import 'package:flutter/material.dart';
import 'package:portfolioapp/project_data.dart';
import 'package:portfolioapp/project_item.dart';
import 'experience_data.dart';
import 'experience_item.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Projetos',
            style: TextStyle(
                color: Color.fromRGBO(226, 90, 122, 2),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: ProjData.map((project) => ProjItem(project: project)).toList(),
        ));
  }
}
