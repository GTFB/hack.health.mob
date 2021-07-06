import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'expert/Appeals.dart';
import 'expert/HomePageExpert.dart';
import 'expert/appeals/assessment.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Json Placeholder App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageEx(),
    );
  }
}


