import 'package:flutter/material.dart';
import 'package:portfolioapp/technology_data.dart';
import 'package:portfolioapp/technology_item.dart';

class Tech extends StatelessWidget {
  const Tech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Tecnologias',
            style: TextStyle(
                color: Color.fromRGBO(226, 90, 122, 2),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Grid());
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: TechData.map((technology) => TechItem(
        technology: technology,
      )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
    );
  }
}

