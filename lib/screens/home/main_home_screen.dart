import 'package:bmi_calculator/screens/connect/connect_screen.dart';
import 'package:bmi_calculator/screens/disease/disease_screen.dart';
import 'package:bmi_calculator/screens/home/home_screen.dart';
import 'package:bmi_calculator/screens/weather/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    DiseaseScreen(),
    ConnectScreen(),
    WeatherScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Disease',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circleNodes),
            label: 'Connect',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cloud),
            label: 'Weather',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
