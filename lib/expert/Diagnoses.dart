//Diagnoses
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Analytics.dart';
import 'Appeals.dart';
import 'Patients.dart';
import 'Specialists.dart';

class Diagnoses extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Аналитика'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],

      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              margin: EdgeInsets.zero, //altrp/example.jpg
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader (
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text('Екатерина Дажкова', style: TextStyle(fontSize: 14, color: Colors.black),),
                accountEmail: Text("ekaterina_dajkova@gmail.com", style: TextStyle(fontSize: 14, color: Colors.black)),
                currentAccountPicture: Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage('https://visatimes.ru/wp-content/uploads/2018/12/foto-na-pasport-rf.jpg'),
                        )
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
      body: Center(
      ),
    );
  }
}