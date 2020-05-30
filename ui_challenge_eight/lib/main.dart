import 'package:flutter/material.dart';
import 'package:flutterpractice/food.dart';
import 'package:flutterpractice/meditation.dart';
import 'package:flutterpractice/profile.dart';
import 'package:flutterpractice/yoga.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentindex = 0;
  final _pages=[
    Yoga(),
    Meditation(),
    Food(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 5,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Yoga'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.cloud_circle),
              title: new Text('Meditation'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.fastfood),
              title: new Text('Food'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail), title: Text('Profile'))
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
      backgroundColor: Colors.white,
      body:_pages[_currentindex],
    );
  }
}
