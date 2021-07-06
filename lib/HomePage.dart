import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Json Placeholder App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AuthorizationPage(),
    );
  }
}