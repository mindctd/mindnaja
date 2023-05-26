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
    "เมื่อเห็นสัญญาณไฟจราจรนี้ควรหยุดใช่หรือไม่?",
    [
      Answer("Yes", true),
      Answer("No", false),
    ],
  ));
  list.add(Question(
    "เมื่อเห็นสัญญาณไฟจราจรนี้ควรชะลอความเร็วใช่หรือไม่?",
    [
      Answer("Yes", true),
      Answer("No", false),
    ],
  ));
  list.add(Question(
    "เมื่อเห็นสัญญาณไฟจราจรนี้ควรหยุดใช่หรือไม่?",
    [
      Answer("Yes", false),
      Answer("No", true),
    ],
  ));
  list.add(Question(
    "นายเก็ทต้องการไปตลาดจึงบอกให้นายมายด์หยิบรองเท้าสีเขียวให้ มายด์ควรหยิบรองเท้าคู่ไหน?",
    [
      Answer("คู่ด้านบน", false),
      Answer("คู่ด้านล่าง", true),
    ],
  ));
  list.add(Question(
    "นายบอสต้องการซื้อดอกกุหลาบสีแดงให้นายโอ้คในวันวาเลนไทน์ นายบอสควรซื้อดอกกุหลาบช่อใด?",
    [
      Answer("ช่อด้านบน", true),
      Answer("ช่อด้านล่าง", false),
    ],
  ));
  list.add(Question(
    "น้องเบนซ์เตรียมของขวัญให้พี่เฟินกับพี่มายด์ โดยกล่องของขวัญพี่มายด์สีเหลือง ของพี่เฟินสีชมพู ถ้าน้องเบนซ์จะให้ของขวัญพี่มายด์ควรหยิบกล่องไหน?",
    [
      Answer("กล่องบน", false),
      Answer("กล่องล่าง", true),
    ],
  ));
  list.add(Question(
    "ในรูปมีร่มสีแดงกี่คัน?",
    [
      Answer("3 คัน", true),
      Answer("4 คัน", false),
      Answer("ไม่มีร่มสีแดง", false)
    ],
  ));
  list.add(Question(
    "ดอกไม้ในรูปมีสีอะไร?",
    [
      Answer("สีขาว", false),
      Answer("สีเหลือง", true),
    ],
  ));
  list.add(Question(
    "ยาไพร๊อก-แมนเม็ดสีส้มมีสรรพคุณแก้ปวด ยาไฮดรอกเม็ดสีเขียวสรรพคุณแก้แพ้หรืออาการคันและระงับประสาทอ่อนๆ คุณยายมีอาการคันของผิวหนัง น้องจูนควรหยิบยาเม็ดไหนให้คุณยาย?",
    [
      Answer("เม็ดทางซ้าย", true),
      Answer("เม็ดทางขวา", false),
    ],
  ));
  list.add(Question(
    "จากรูปจงเรียงลำดับสีสารเคมีจากซ้ายไปขวาให้ถูกต้อง",
    [
      Answer("เขียว แดง เขียว แดง ชมพู ขาว เขียว", false),
      Answer("ฟ้า แดง เหลือง แดง ขาว เขียว ม่วง", false),
      Answer("ฟ้า ม่วง ส้ม เขียว เหลือง เขียว แดง", true),
      Answer("ไม่สามารถแยกสีได้", false),
    ],
  ));
  return list;
}
