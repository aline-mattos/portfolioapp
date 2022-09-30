import 'package:flutter/material.dart';
import 'model/experience.dart';
import 'experience_data.dart';

class xpItem extends StatelessWidget {

  final Experience xp;

  const xpItem({Key? key, required this.xp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 400,
        height: 400,
        margin: EdgeInsets.only(left: 12, right: 12, top: 12),
        child: SizedBox(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            child: xp.image,
          ),
        ),
      ),
      Container(
        width: 400,
        height: 200,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(201, 201, 201, 4),
                blurRadius: 4,
                spreadRadius: 2,
                offset: Offset(2, 2))
          ],
        ),
        child: Column(
          children: [
            Container(child: Text(xp.title, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(244, 127, 155, 2)),)),
            Container(
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 8),
              child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 93, 94, 2)), xp.description),
            ),
          ],
        ),
      ),
    ]);
  }
}
