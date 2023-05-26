import 'package:eyetestapp/colblind.dart';
import 'package:eyetestapp/long.dart';
import 'package:eyetestapp/sepcol.dart';
import 'package:eyetestapp/short.dart';
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
        title: Text(
          'โปรดเลือกการทดสอบที่ท่านต้องการ :',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: (Colors.green[300]),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/gg.jpg"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.orange[700],
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const short()),
                  );
                },
                splashColor: Colors.green[700],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.remove_red_eye_outlined,
                        size: 70.0,
                        color: Colors.brown,
                      ),
                      Text(
                        "ตรวจภาวะสายตาสั้น",
                        style: new TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const long()),
                  );
                },
                splashColor: Colors.green[700],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.remove_red_eye,
                        size: 70.0,
                        color: Colors.purple,
                      ),
                      Text(
                        "ตรวจภาวะสายตายาว",
                        style: new TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.teal,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const colblind()),
                  );
                },
                splashColor: Color.fromARGB(255, 137, 136, 135),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.color_lens,
                        size: 70.0,
                        color: Colors.yellow[700],
                      ),
                      Text(
                        "ตรวจโรคตาบอดสี",
                        style: new TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.yellow,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const quizsepcol(),
                    ),
                  );
                },
                splashColor: Colors.green[700],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning_amber_outlined,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text(
                        "ตรวจโรคต้อกระจก",
                        style: new TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
