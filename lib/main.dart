import 'package:flutter/material.dart';
import 'package:portfolioapp/custom_icons.dart';
import 'package:portfolioapp/experiences.dart';
import 'package:portfolioapp/home.dart';
import 'package:portfolioapp/projects.dart';
import 'package:portfolioapp/technologies.dart';



void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: new ThemeData(fontFamily: 'Quicksand', primaryColor: Colors.white),
      home: CustomPages(),
    );
  }
}

class CustomPages extends StatefulWidget {
  const CustomPages({Key? key}) : super(key: key);

  @override
  State<CustomPages> createState() => _CustomPagesState();
}

class _CustomPagesState extends State<CustomPages> {
  int _selectedIndex = 1;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Experiences(),
    Home(),
    Projects(),
    Tech(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.lightbulb_on_outline),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.xml__1_),
            label: 'Business',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(226, 90, 122, 2),
        unselectedItemColor: Color.fromRGBO(238, 160, 178, 2),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
