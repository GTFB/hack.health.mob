import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawing Shapes",
      home: MyApp2(),
    );
  }
}
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            Text('Обращение #5435234ОРВЫ', style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,)),
            Text('                                            '),
            Text("21%   ", style: TextStyle(fontSize: 16, color: Colors.red,fontWeight: FontWeight.bold))
          ],
          backgroundColor: Colors.white
      ),
      body: CustomPaint( //                       <-- CustomPaint widget
        size: Size(300, 300),
        painter: MyPainter(),
        child: Table(
          border: TableBorder.all(color: Colors.white),
          children: [
            TableRow(children: [Text(''),Text(''),Text('')]),
            TableRow(children: [Text(''),
              Text('Разработана диета', style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold,)),
              Text('')

            ]),

            TableRow(children: [Text(''),Text(''),Text('')]),
            TableRow(children: [Text('            Завтрак:', style: TextStyle()),
              Text('Рисовая или манная протертая каша-размазня с кусочком сливочного масла, стакан чая с молоком.'),Text('')]),
            TableRow(children: [Text(' '),Text(''),Text('')]),
            TableRow(children: [Text('            Обед:', style: TextStyle()),
              Text('Пюре из мяса с рисом, компот или кисель из сухофруктов.'),Text('')]),
            TableRow(children: [Text(''),Text(''),Text('')]),
            TableRow(children: [Text('            Ужин:', style: TextStyle()),
              Text('Пюре из вареной рыбы, отвар шиповника.'),Text('')]),
            TableRow(children: [Text(''),Text(''),Text('')]),
            TableRow(children: [Text(''),Text(''),Text('')]),
            TableRow(children: [
              Text('Общая калорийность рациона не превышает:', style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold,)),
              Text('    1748 ккал'
                , style: TextStyle(fontSize: 14, color: Colors.red,  fontWeight: FontWeight.bold,)),Text('')]),
          ],
        ),
      ),
    );
  }

}

class MyPainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(-20, 3);
    final p2 = Offset(70, 3);
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 6;
    canvas.drawLine(p1, p2, paint);
    final p3 = Offset(70, 3);
    final p4 = Offset(480, 3);
    final paint2 = Paint()
      ..color = Colors.deepOrange.shade100
      ..strokeWidth = 6;
    canvas.drawLine(p3, p4, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
