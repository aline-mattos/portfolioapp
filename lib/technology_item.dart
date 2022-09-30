import 'package:flutter/material.dart';
import 'package:portfolioapp/model/technology.dart';

class TechItem extends StatelessWidget {
  final Technology technology;

  const TechItem({Key? key, required this.technology}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, bottom: 8, top: 8, right: 8),
      width: 900,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(201, 201, 201, 4),
                blurRadius: 4,
                spreadRadius: 2,
                offset: Offset(2, 2))
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image inside the card
            Container(
              margin: EdgeInsets.all(4),
              width: 80,
              height: 80,
              child: technology.image,
            ),
            Text(technology.title, style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(75, 68, 69, 2), fontSize: 18),),
            Container(margin: EdgeInsets.all(8), child: technology.levelImage)
          ],
        ),
      ),
    );
  }
}
