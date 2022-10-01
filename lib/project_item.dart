import 'package:flutter/material.dart';
import 'model/project.dart';

class ProjItem extends StatelessWidget {
  final Project project;

  const ProjItem({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
        child: SizedBox(child: project.image),
      ),
      Container(
        width: 400,
        height: 200,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 16, right: 16, top: 2, bottom: 2),
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
            Container(
                child: Text(
              project.title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(244, 127, 155, 2)),
            )),
            Container(
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 8),
              child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 93, 94, 2)),
                  project.description),
            ),
          ],
        ),
      ),
    ]);
  }
}
