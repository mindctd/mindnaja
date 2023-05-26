import 'package:flutter/material.dart';

class score3 extends StatelessWidget {
  const score3({super.key});

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
          child: Image.asset('assets/colblind.jpg'),
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
