import 'package:flutter/material.dart';
import 'categories_data.dart';
import 'category_item.dart';
import 'custom_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Color.fromRGBO(226, 90, 122, 2),
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info_outlined,
                  color: Color.fromRGBO(226, 90, 122, 2)),
              onPressed: () => showAlertDialog(context))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[Header(), Expanded(child: Grid())],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14)),
          color: Color.fromRGBO(255, 219, 228, 100)),
      //inside the pink header
      child: ListView(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          //header title
                          Container(
                            child: Text('Hello World!',
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 44, 79, 50),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                          ),
                          //subtitle
                          Container(
                            child: Text('Eu sou a Aline!',
                                style: TextStyle(
                                  color: Color.fromRGBO(75, 68, 69, 15),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          )
                        ],
                      ),
                    ),
                    //image
                    SizedBox(
                      height: 150,
                      width: 220,
                      child: ClipRRect(
                        borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                        child: Image.asset('assets/profile.JPG',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ]),
              //description
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                        margin: EdgeInsets.only(
                            right: 8, left: 8, bottom: 16, top: 16),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        alignment: Alignment.topLeft,
                        child: Flexible(
                          child: Text(
                              'Seja bem-vindo ao meu “mini-mundo”. \n'
                                  'Fiz esse app com o intuito de estudar, \nmas também me apresentar!',
                              style: TextStyle(
                                color: Color.fromRGBO(75, 68, 69, 15),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              )),
                        )),
                  ),
                ],
              ),
            ]),
      ]),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: CategoriesData.map((category) => CategoryItem(
        category: category,
      )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget dismissButton = TextButton(
    child: Text(
      "Voltar",
      style: TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dialog
    },
  );

  AlertDialog alert = AlertDialog(
    alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
    title: Text('Informações sobre o app',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(99, 93, 94, 2),
            fontSize: 16),
        textAlign: TextAlign.center),
    content: Container(
        width: 100,
        height: 150,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset('assets/flutter.png',
                          width: 40, height: 40, fit: BoxFit.fitHeight)),
                  Container(
                      child: Image.asset('assets/figma.png',
                          width: 40, height: 40, fit: BoxFit.fitHeight)),
                  Container(
                      child: Image.asset('assets/flat.png',
                          width: 40, height: 40, fit: BoxFit.fitHeight)),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Este aplicativo foi criado usando Flutter, seu design foi criado no Figma, e os ícones são do Flaticon.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(99, 93, 94, 2)),
                    ),
                  )
                ],
              )
            ])),
    actions: [dismissButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}