import 'package:flutter/material.dart';

class score2 extends StatelessWidget {
  const score2({super.key});

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
          child: Image.asset('assets/long.jpg'),
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
