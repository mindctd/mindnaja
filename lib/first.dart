import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ช่วงนี้รู้สึกสายตาไม่ดี มองเห็นอะไรก็เลือนลาง"),
            Text("สุขภาพสายตาไม่ค่อยดี จนอดสงสัยไม่ได้ว่า"),
            Text("เอ๊ะ ฉันแก่ขึ้น! แล้วความสามารถในการมองเห็นมันลดลงรึเปล่า?"),
            Text("ถ้ามีคำถามแบบนี้ขึ้นมาในหัวล่ะก็ ได้เวลาทดสอบแล้วล่ะ!"),
          ],
        ),
      ),
    );
  }
}
