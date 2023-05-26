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
    "คุณมีอาการมองเห็นภาพที่ไม่ชัดเจนหรือไม่ เมื่อมองไกล?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณรู้สึกตาเมื่อยหรือไม่เมื่อใช้สายตาเป็นเวลานาน?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณต้องเพ่งตามากๆเพื่อให้มองเห็นได้ชัดเจนขึ้นหรือไม่",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "คุณมีอาการเวียนวนหรือเปลี่ยนแปลงจากมุมมองที่ต่างกันอยู่บ่อยครั้งหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "มองเห็นได้ไม่ชัดเวลาขับขี่ โดยเฉพาะกลางคืน",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "ท่านมีปัญหาเห็นวัตถุที่อยู่ไกลโดยเฉพาะในสภาวะแสงน้อยหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "8",
    [
      Answer("8", true),
      Answer("6", false),
      Answer("Can't see", false),
    ],
  ));

  list.add(Question(
    "0",
    [
      Answer("0", true),
      Answer("8", false),
      Answer("Can't see", false),
    ],
  ));
  list.add(Question(
    "4",
    [
      Answer("9", false),
      Answer("4", true),
      Answer("Can't see", false),
    ],
  ));
  list.add(Question(
    "9",
    [
      Answer("6", false),
      Answer("9", true),
      Answer("Can't see", false),
    ],
  ));
  return list;
}
