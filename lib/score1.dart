import 'package:flutter/material.dart';

class score1 extends StatelessWidget {
  const score1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('เกณฑ์คะแนน'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/eiei.jpg"), fit: BoxFit.cover),
          ),
          child: Image.asset('assets/1.jpg'),
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
