import 'package:altrp/expert/appeals/rrr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Appeals
class Appeals extends StatelessWidget {
  const Appeals({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Обращения'),
        backgroundColor: Colors.blue,
      ),
      body: _getBody(index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.score),
            label: 'Оценка качества',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_sharp),
            label: 'Мед. услуги',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Препараты',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Диета',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Реабилитация',
            backgroundColor: Colors.blue,
          ),

        ],
      ),
    );
  }

  _getBody(int index) {
    switch (index) {
      case 0:
        return ProfilePage(); // Create this function, it should return your first page as a widget
      case 1:
        return ProfilePage(); // Create this function, it should return your second page as a widget
      case 2:
        return ProfilePage(); // Create this function, it should return your third page as a widget
      case 3:
        return ProfilePage();
      case 4:
        return ProfilePage();// Create this function, it should return your fourth page as a widget
    }

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }
}
