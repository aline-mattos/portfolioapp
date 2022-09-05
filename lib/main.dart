import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'Quicksand'),
      home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Header()),
    );
  }
}

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //background
      Container(color: Color.fromRGBO(250, 249, 249, 10)),
      //pink background
      Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14)),
              color: Color.fromRGBO(255, 219, 228, 100)),
          //inside the pink header
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Column(
                    children: [
                      //header title
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 32, right: 24),
                        margin: EdgeInsets.all(5),
                        child: Text('Hello World!',
                            style: TextStyle(
                              color: Color.fromRGBO(189, 44, 79, 100),
                              fontFamily: 'Quicksand',
                              fontSize: 18,
                            )),
                      ),
                      //subtitle
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Text('Eu sou a Aline!',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 68, 69, 15),
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                            )),
                      )
                    ],
                  ),
                  //image
                  Container(
                    height: 150,
                    width: 240,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(75)),
                      child:
                          Image.asset('assets/profile.JPG', fit: BoxFit.cover),
                    ),
                  ),
                ]),
                //description
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, top: 8),
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      child: Text('Seja bem-vindo ao meu “mini-mundo”. \n'
                          'Fiz esse app com o intuito de estudar, \n'
                          'mas também me apresentar!',
                          style: TextStyle(
                            color: Color.fromRGBO(75, 68, 69, 15),
                            fontFamily: 'Quicksand',
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
              ]))
    ]);
  }
}
