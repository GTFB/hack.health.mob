import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PageExpert extends StatelessWidget {

  // функция build отвечает за построение иерархии виджетов
  @override
  Widget build(BuildContext context) {
    // виджет MaterialApp - главный виджет приложения, который
    // позволяет настроить тему и использовать
    // Material Design для разработки.
    return MaterialApp(
      // заголовок приложения
      // обычно виден, когда мы сворачиваем приложение
      title: 'Json Placeholder App',
      // настройка темы, мы ещё вернёмся к этому
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}