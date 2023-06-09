import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/eiei.jpg"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ช่วงนี้รู้สึกสายตาไม่ดี มองเห็นอะไรก็เลือนลาง",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(""),
                Text(
                  "สุขภาพสายตาไม่ค่อยดี จนอดสงสัยไม่ได้ว่า",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(""),
                Text(
                  "เอ๊ะ ฉันแก่ขึ้น! แล้วความสามารถในการมองเห็นมันลดลงรึเปล่า?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(""),
                Text(
                  "ถ้ามีคำถามแบบนี้ขึ้นมาในหัวล่ะก็ ได้เวลาทดสอบแล้วล่ะ!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
