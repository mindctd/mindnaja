import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homemenu extends StatefulWidget {
  @override
  State<homemenu> createState() => _homemenuState();
}

class _homemenuState extends State<homemenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('menu'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Mymenu(
              icon: Icons.remove_red_eye_sharp,
              warna: Colors.orange,
            ),
            Mymenu(
              icon: Icons.remove_red_eye_outlined,
              warna: Colors.purple,
            ),
            Mymenu(
              icon: Icons.color_lens,
              warna: Colors.red,
            ),
            Mymenu(
              icon: Icons.window_outlined,
              warna: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class Mymenu extends StatelessWidget {
  Mymenu({this.icon, this.warna});

  final IconData? icon;
  final MaterialColor? warna;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green[700],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text("Home", style: new TextStyle(fontSize: 17.0)),
              Text("Home", style: new TextStyle(fontSize: 17.0)),
              Text("Home", style: new TextStyle(fontSize: 17.0)),
              Text("Home", style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
