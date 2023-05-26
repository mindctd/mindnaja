import 'dart:ui';

class Question {
  final String questionText;
  final List<Answer> answerList;
  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool inCorrect;
  Answer(this.answerText, this.inCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  list.add(Question(
    "คุณมีอาการตาพร่ามัวลงเรื่อยๆ รู้สึกเหมืือนมีหมอกบังหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการมองเห็นภาพซ้อนหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการมองเห็นแสงกระจายขณะขัยรถตอนกลางคืนหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการพร่ามัวมากในที่ที่มีแสงสว่างหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการสู้แสงไม่ได้แต่กลับมองชัดในที่มืดหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "บริเวณกลางรูม่านตาของคุณมีฝ้าขาวเกิดขึ้นหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีปัญหาการมองเห็นในสภาพแวดล้อมที่มีการเคลื่อนไหวรวดเร็วหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการตาเมื่อยล้าง่ายขึ้นหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการเห็นสีเปลี่ยนแปลงหรือไม่",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "ลักษณะแก้วตาของคุณมีความขุ่นผิดปกติหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  return list;
}
