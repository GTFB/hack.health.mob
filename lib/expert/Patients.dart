import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Analytics.dart';
import 'Appeals.dart';
import 'Diagnoses.dart';
import 'Specialists.dart';

class Patients extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Пациенты'),
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
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            child: Table(
              border: TableBorder.all(color: Colors.white),
              children: [
                TableRow(children: [
                  Text('Имя    пациента', style: TextStyle(color: Colors.grey )),
                  Text('Дата Создания', style: TextStyle(color: Colors.grey )),
                  Text('Диагноз        по МКБ-10', style: TextStyle(color: Colors.grey )),
                  Text('% соответствия', style: TextStyle(color: Colors.grey )),
                ]),
                
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Кирилл Инокентий'),
                  Text('20.07.21'),
                  Text('A00'),
                  Text('93',style: TextStyle(color: Colors.greenAccent )),
                  ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Игорь Инокентий'),
                  Text('20.07.21'),
                  Text('A20'),
                  Text('96', style: TextStyle(color: Colors.greenAccent )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Татьяновна Иванова'),
                  Text('20.07.21'),
                  Text('В00'),
                  Text('100', style: TextStyle(color: Colors.green )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Григорий Михайлов'),
                  Text('20.07.21'),
                  Text('A09'),
                  Text('71', style: TextStyle(color: Colors.orangeAccent )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Карлам Ирнасов'),
                  Text('20.07.21'),
                  Text('В35'),
                  Text('88', style: TextStyle(color: Colors.greenAccent )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Алина Крабова'),
                  Text('20.07.21'),
                  Text('В55'),
                  Text('53', style: TextStyle(color: Colors.orangeAccent )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Историй Варганов'),
                  Text('20.07.21'),
                  Text('А45'),
                  Text('92', style: TextStyle(color: Colors.greenAccent )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Авдос Ланасов'),
                  Text('20.07.21'),
                  Text('В99'),
                  Text('100', style: TextStyle(color: Colors.green)),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Лена Томатова'),
                  Text('20.07.21'),
                  Text('В65'),
                  Text('15', style: TextStyle(color: Colors.red )),
                ]),
                TableRow(children: [Text(' '),Text(' '),Text(' '),Text(' ')]),
                TableRow(children: [
                  Text('Виктор Аргентинов'),
                  Text('20.07.21'),
                  Text('А50'),
                  Text('38', style: TextStyle(color: Colors.red )),
                ])
              ],
            ),
          )
      ),
    );
  }
}