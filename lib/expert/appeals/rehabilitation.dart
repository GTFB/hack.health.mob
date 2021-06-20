import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class rehabilitation extends StatelessWidget {
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
        child: new Column(
          children: [
            Text(" "),
            Text("Программа реабилитации", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            CheckboxGroup(
                labels: <String>[
                  "ЛФК",
                  "Эрготерапия",
                  "Физиотерапия",
                  "Массаж",
                  "Психотерапия",
                  "медикаментозная терапия",
                  "Лечение в кабинете офтальмолога",
                ],
                onSelected: (List<String> checked) => print(checked.toString())
            )
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
