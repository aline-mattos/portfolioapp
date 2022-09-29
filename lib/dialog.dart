import 'package:flutter/material.dart';
import 'model/content.dart';
import 'categories_data.dart';

showAlertDialog(BuildContext context, Content content) {

  AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      contentPadding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      title: Container(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    content.title,
                    style: TextStyle(fontWeight: FontWeight.bold, color: content.titleColor),
                  ),
                ],
              ),
              Column(
                children: [IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop(); // dismiss dialog
                        },
                      ),
                ],
              ),
            ]),
      ),
      content: Container(
        height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        width: 200,
                        height: 200,
                        alignment: Alignment.topCenter,
                        child: content.image,)
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(content.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(99, 93, 94, 2)),
                  ))
                ],
              )
            ],
          ))
      /* ,
  actions: [closeButton],
  )*/
      );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
