import 'package:eyetestapp/colblindquestion.dart';
import 'package:eyetestapp/score.dart';
import 'package:eyetestapp/score3.dart';
import 'package:flutter/material.dart';

class colblind extends StatefulWidget {
  const colblind({super.key});

  @override
  State<colblind> createState() => _colblindlState();
}

class _colblindlState extends State<colblind> {
  List<Question> questionList = getQuestions();

  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ตรวจโรคตาบอดสี',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: (Colors.black),
      ),
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            child: getpic(
              currentQuestionIndex,
            ),
            width: 150,
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}", // QUESTION NUMBER TEXT 4/4
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center, //CENTER YELLOW
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 146, 23),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        )
      ],
    );
  } //END QUESTIONS WIDGET

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Colors.orangeAccent : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.inCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            ///Display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Your Score is" : "Your Score is";

    return AlertDialog(
      title: Text(title + " $score"),
      content: ElevatedButton(
        child: Text(
          "ไปดูผลลัพธ์กันเลย!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const score3()),
          );
        },
      ),
    );
  }
}

Widget getpic(int index) {
  switch (index) {
    case 0:
      return Image.asset(
        'assets/red.jpg',
        height: 200,
      );
    case 1:
      return Image.asset(
        'assets/yellow.jpg',
        height: 200,
      );
    case 2:
      return Image.asset(
        'assets/green.jpg',
        height: 200,
      );
    case 3:
      return Image.asset(
        'assets/shoes.jpg',
        height: 200,
        width: 150,
      );
    case 4:
      return Image.asset(
        'assets/bothfl.jpg',
        height: 200,
        width: 150,
      );

    case 5:
      return Image.asset(
        'assets/box.jpg',
        height: 200,
        width: 150,
      );
    case 6:
      return Image.asset(
        'assets/um.jpg',
        height: 100,
      );
    case 7:
      return Image.asset(
        'assets/flower.jpg',
        height: 100,
      );
    case 8:
      return Image.asset('assets/m.jpg');
    case 9:
      return Image.asset(
        'assets/color.jpg',
        height: 100,
      );
    default:
      return Text('assets/error');
  }
}
