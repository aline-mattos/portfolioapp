import 'package:flutter/material.dart';
import 'model/category.dart';
import 'dialog.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(
      {Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showAlertDialog(context, category.content);
      },
      child: Container(
        margin: EdgeInsets.all(16),
        width: 400,
        height: 200,
        decoration: BoxDecoration(
            color: category.color,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image inside the card
              Container(
                width: 80,
                height: 80,
                child: category.image,
              ),
              Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(
                    category.title,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(75, 68, 69, 10),
                        fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
