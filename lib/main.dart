import 'package:flutter/material.dart';
import 'question.dart';
import 'quizz_brain.dart';

QuizzBrain quizzBrain = QuizzBrain();

// final questionBank = quizzBrain.questionBank;

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];

  // List<bool> answerKey = [false, true, true];

  // Question q1 =
  //     Question('You can lead a cow down stairs but not up stairs.', false);

  // List<Question> questionBank = [
  //   Question('You can lead a cow down stairs but not up stairs.', false),
  //   Question('Approximately one quarter of human bones are in the feet.', true),
  //   Question('A slug\'s blood is green.', true)
  // ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizzBrain.questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  // checking correct answer is true
                  if (quizzBrain.questionBank[questionNumber].questionAnswer ==
                      true) {
                    print("Right clicked ✅✅");

                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    print("Wrong clicked ❌❌");

                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  }

                  questionNumber += 1;

                  // logic for loop questions
                  // if (questionNumber == 12) {
                  //   print("yes it's 2");
                  //   questionNumber = 0;
                  // } else {
                  //   questionNumber += 1;
                  //   print(questionNumber);
                  // }
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              // color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                // checking correct answer is false
                setState(() {
                  if (quizzBrain.questionBank[questionNumber].questionAnswer ==
                      false) {
                    print("Right clicked ✅✅");
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    print("Wrong clicked ❌❌");
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  }

                  questionNumber += 1;

                  // logic for loop questions
                  // if (questionNumber == 12) {
                  //   questionNumber = 0;
                  // } else {
                  //   questionNumber += 1;
                  //   print(questionNumber);
                  // }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
