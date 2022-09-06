import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: new ThemeData(fontFamily: 'Quicksand'),
      home: Scaffold(
        appBar: AppBar(
            /*systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),*/
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Home',
              style: TextStyle(
                  color: Color.fromRGBO(226, 90, 122, 2),
                  fontWeight: FontWeight.bold),
            )),
        body: ListView(
          children: [
            Container(
                child: Column(children: [
              Header(),
              //description text
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Text(
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(75, 68, 69, 10),
                    ),
                    'Navegue pelos cards abaixo para saber mais sobre mim, meus hobbies e projetos.'),
              ),
              //list item (line)
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Category('Biologia', Image.asset('assets/biology.png'),
                        Color.fromRGBO(220, 251, 209, 2)),
                    Category('Voluntária', Image.asset('assets/volunteer.png'),
                        Color.fromRGBO(255, 219, 225, 2)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Category('Pets', Image.asset('assets/pets.png'),
                        Color.fromRGBO(226, 226, 226, 2)),
                    Category('Leitura', Image.asset('assets/books.png'),
                        Color.fromRGBO(193, 240, 255, 2)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Category('Alemão', Image.asset('assets/german.png'),
                        Color.fromRGBO(251, 242, 209, 2)),
                    Category('Inglês', Image.asset('assets/english.png'),
                        Color.fromRGBO(219, 222, 255, 2)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Category('Portugal', Image.asset('assets/portugal.png'),
                        Color.fromRGBO(255, 223, 205, 2)),
                    Category('Brasil', Image.asset('assets/brazil.png'),
                        Color.fromRGBO(205, 255, 246, 2)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Category('Jogos', Image.asset('assets/games.png'),
                        Color.fromRGBO(226, 226, 226, 2)),
                    Category('Exercícios', Image.asset('assets/exercise.png'),
                        Color.fromRGBO(255, 219, 245, 2)),
                  ]),
            ]))
          ],
        ),
      ),
    ));

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //pink container
      Container(
          height: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24),
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
                      Container(
                        height: 150,
                        width: 240,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(75)),
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
                    Container(
                      padding: EdgeInsets.only(left: 16, bottom: 16),
                      child: Text(
                          'Seja bem-vindo ao meu “mini-mundo”. \n'
                          'Fiz esse app com o intuito de estudar, \n'
                          'mas também me apresentar!',
                          style: TextStyle(
                            color: Color.fromRGBO(75, 68, 69, 15),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            fontSize: 14,
                          )),
                    )
                  ],
                ),
              ])),
      /*Container(
        color: Colors.green),*/
    ]);
  }
}

class Category extends StatelessWidget {
  final String title;
  final Image image;
  final Color color;

  const Category(this.title, this.image, this.color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            //first line with cards + padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //card
                Container(
                  width: 150,
                  height: 140,
                  decoration: BoxDecoration(
                      color: this.color,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  //inside the card
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
                          child: this.image,
                        ),
                        //text inside the card
                        Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Text(
                              this.title,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void funcCreateCategory() {

}

