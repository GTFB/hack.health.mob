import 'package:flutter/material.dart';

import 'Analytics.dart';
import 'Appeals.dart';
import 'Diagnoses.dart';
import 'Patients.dart';
import 'Specialists.dart';

class HomePageEx extends StatefulWidget {
  @override
  _HomePageExState createState() => _HomePageExState();
}

class _HomePageExState extends State<HomePageEx> {
  String text = "Home page";
  @override
  Widget build(BuildContext context) {
    //корневой виджет для страницы или экрана
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Медэкспертиза'),
            backgroundColor: Colors.blue,
          ),
          drawer: Drawer(
            child: new ListView(
              children: <Widget>[
                new DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader (
                    decoration: BoxDecoration(color: Colors.blue),
                    accountName: Text('Екатерина Дажкова'),
                    accountEmail: Text("home@mail.ru"),
                    currentAccountPicture: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                        )
                    ),
                  ),
                ),
                new ListTile(
                    leading: Icon(Icons.people_alt_sharp),
                    title: new Text("Пациенты"),
                    onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Patients()));}
                ),
                new ListTile(
                    leading: Icon(Icons.message),
                    title: new Text("Обращения"),
                    onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Appeals()));
                    }
                ),
                new ListTile(
                    leading: Icon(Icons.document_scanner),
                    title: new Text("Диагнозы"),
                    onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Diagnoses()));}
                ),
                new ListTile(
                    leading: Icon(Icons.person),
                    title: new Text("Специалисты"),
                    onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Specialists()));}
                ),
                new ListTile(
                    leading: Icon(Icons.find_in_page),
                    title: new Text("Аналитика"),
                    onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Analytics()));}
                )
              ],
            ),
          ),
        ));
  }
}