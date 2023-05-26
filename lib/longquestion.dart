class Question {
  final String questionText;
  final List<Answer> answersList;
  final String imagePath;

  Question(this.questionText, this.answersList, this.imagePath);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
//เพิ่ม คำถามและคำตอบไว้ที่นี่

  list.add(Question(
    "คุณมีปัญหาในการมองเห็นวัตถุที่อยู่ไกลได้ในระยะปกติหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
    "assets/images/Xcom2.png",
  )); //1

  list.add(Question(
    "คุณมักมีอาการตาพร่าหรือบ้านมืดเวลาทำงานหรืออ่านหนังสือใช่หรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
    "assets/images/Xcom2.png",
  )); //2

  list.add(Question(
    "คุณมักมีอาการตาเมาหรือคลื่นไส้เมื่อมองเห็นวัตถุที่อยู่ไกลได้ในระยะที่ไม่เหมาะสมหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
    "assets/images/Xcom2.png",
  )); //3

  list.add(Question(
    "คุณมีอาการหรือปัญหาในการเข้าใช้งานสมาร์ทโฟนหรือคอมพิวเตอร์เนื่องจากความสายตายาวหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
    "assets/images/Xcom2.png",
  )); //4

  list.add(Question(
    "คุณมีประวัติครอบครัวที่มีสมาชิกที่มีสายตายาวหรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
    "assets/images/Xcom2.png",
  )); //5

  list.add(Question(
    "E   C   F   L   O   P   T   Z",
    [
      Answer("E   L   C   T   Z   P   F   O", false),
      Answer("F   Z   P   E   O   L   C   T", false),
      Answer("E   C   F   L   O   P   T   Z", true),
      Answer("T   Z   E   L   P   C   F   O", false),
    ],
    "assets/images/Xcom2.png",
  )); //6

  list.add(Question(
    "B   D   E   F    P   E   U   Y",
    [
      Answer("B   D   E   F   P   E   U   Y", true),
      Answer("D   B   F   E   Y   P   E   U", false),
      Answer("E   U   D   B   Y   E   F   P", false),
      Answer("Y   E   U   B   F   D   P   E", false),
    ],
    "assets/images/TheDivi2.png",
  )); //7

  list.add(Question(
    "Q   O   N    L    I   T   W   Y",
    [
      Answer("T   W    Y    Q   O    N   L   I", false),
      Answer("L   I    T    W    Y   Q   O   N", false),
      Answer("Y   Q    O    N    L   I   T   W", false),
      Answer("Q   O    N    L    I   T   W   Y", true),
    ],
    "assets/images/TheDivi2.png",
  )); //8

  list.add(Question(
    "P   Z   H   S   F   N   W   D",
    [
      Answer("D    W    N    F    S   H    Z    P", false),
      Answer("P    Z    H    S    F   N    W    D", true),
      Answer("N    D    H    W    F   Z    S    P", false),
      Answer("F    P    Z    N    D   S    H    W", false),
    ],
    "assets/images/TheDivi2.png",
  )); //9

  list.add(Question(
    "K   V   A   E   R   C  T  O",
    [
      Answer("T    E    K    C    O   V    R    A", false),
      Answer("O    R    V    T    E   A    K    C", false),
      Answer("K    V    A    E    R   C    T    O", true),
      Answer("C    T    O    A    K   V    E    R", false),
    ],
    "assets/images/TheDivi2.png",
  )); //10

  return list;
}
