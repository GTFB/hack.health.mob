import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

class HomePage extends StatelessWidget {

  // функция build отвечает за построение иерархии виджетов
  @override
  Widget build(BuildContext context) {
    // виджет MaterialApp - главный виджет приложения, который
    // позволяет настроить тему и использовать
    // Material Design для разработки.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // заголовок приложения
      // обычно виден, когда мы сворачиваем приложение
      title: 'Json Placeholder App',
      // настройка темы, мы ещё вернёмся к этому
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // указываем исходную страницу, которую мы создадим позже
      home: AuthorizationPage(),
    );
  }
}