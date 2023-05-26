import 'package:eyetestapp/Screens/splash.dart';
import 'package:eyetestapp/first.dart';
import 'package:eyetestapp/howtouse.dart';
import 'package:eyetestapp/menu.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main(List<String> args) {
  var app = MaterialApp(
    title: "My App",
    home: splash(),
    theme: ThemeData(primarySwatch: Colors.green),
  );
  runApp(app);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndedx = 0;
  List widgetOption = [
    firstpage(),
    homemenu(),
    how(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.green[300]),
      body: Center(
        child: widgetOption[currentIndedx],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.brown,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Welcome'),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: 'Menu!'),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_mark), label: 'How to use app'),
        ],
        currentIndex: currentIndedx,
        onTap: (index) => setState(
          () => currentIndedx = index,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Uvision",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
