import 'package:flutter/material.dart';
import 'experience_data.dart';
import 'experience_item.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Vivências',
            style: TextStyle(
                color: Color.fromRGBO(226, 90, 122, 2),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: XpData.map((xp) => xpItem(xp: xp)).toList(),
        ));
  }
}
