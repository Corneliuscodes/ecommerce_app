import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _bottomNavIndex = 0;

  void _onItemTapped(int index) {

    if (index != 2) {
      setState(() {
        _bottomNavIndex = index;
      });

      print(_bottomNavIndex);
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Settings()),
      );
    }

  }

  pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return Category();
        }
      case 1:
        {
          return Feed();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: pageCaller(_bottomNavIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            //title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            //title: Text('Settings'),
          ),
        ],
        currentIndex: _bottomNavIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Category"),
      ),
    );
  }
}

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Feed"),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}