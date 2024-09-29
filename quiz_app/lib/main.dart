import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizeAppState();
}

class _QuizeAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
      "explaination":
          "Microsoft is a multinational computer technology corporation. Microsoft was founded on April 4, 1975, by Bill Gates and Paul Allen in Albuquerque, New Mexico. So answer is Bill Gates"
    },
    {
      "question": "Which is one of the Biggest Ocean in the earth?",
      "options": [
        "Southern Ocean",
        "Indian Ocean",
        "Pacific Ocean",
        "Atlantic Ocean"
      ],
      "correctAnswer": 2,
      "explaination":
          "The Pacific Ocean covers more than 30% of the Earth's surface, which is larger than all the continents combined. So answer is Pacific Ocean"
    },
    {
      "question": "Which is the longest river in India?",
      "options": ["Ganga", "Yamuna", "Saraswati", "Bhagirati"],
      "correctAnswer": 0,
      "explaination":
          "The Ganges, also known as the Ganga, is the longest river in India, with a length of 2,525 kilometers. So answer is Ganga"
    },
    {
      "question": "Which is the national Animal in India?",
      "options": ["Peacock", "Bengal Tiger", "Elephant", "Lion"],
      "correctAnswer": 1,
      "explaination":
          "The Royal Bengal Tiger has a thick golden coat with dark stripes and can weigh over 250 kilograms. So answer is Tiger"
    },
    {
      "question":
          "Which is one of the biggest IT companies in India,found by indian?",
      "options": ["Wipro", "Infosys", "IBM", "Tata Consultancy Services"],
      "correctAnswer": 3,
      "explaination":
          "TCS is the largest IT company in India, headquartered in Mumbai, and also the largest employer with an employee count of 616,000 worldwide. So answer is TCS"
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  increaseScore() {
    if (selectedAnswerIndex ==
        allQuestions[currentQuestionIndex]["correctAnswer"]) {
      score++;
    }
    setState(() {});
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 130,
                      ),
                      Text(
                        "Question ${currentQuestionIndex + 1}/${allQuestions.length}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Score:$score",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 70,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 122, 11, 30)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                    increaseScore();
                  }
                },
                child: Text(
                  "A.${allQuestions[currentQuestionIndex]['options'][0]}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 29, 105)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                    increaseScore();
                  }
                },
                child: Text(
                  "B.${allQuestions[currentQuestionIndex]['options'][1]}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 29, 105)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                    increaseScore();
                  }
                },
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  "C.${allQuestions[currentQuestionIndex]['options'][2]}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 29, 105)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                    increaseScore();
                  }
                },
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  "D.${allQuestions[currentQuestionIndex]['options'][3]}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 29, 105)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (selectedAnswerIndex != -1)
                  Column(
                    children: [
                      const Text(
                        "Explaination",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 250,
                        padding: const EdgeInsets.all(15),
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                        child: Text(
                          allQuestions[currentQuestionIndex]['explaination'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // increaseScore();
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
                setState(() {});
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Text(
            "Next",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                "https://img.freepik.com/premium-photo/championship-cup-winner-trophy-golden-silver-color-transparent-background_827055-796.jpg",
                height: 230,
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Text(
                "Congratulations!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Score: $score/${allQuestions.length}",
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                (score >= 4) ? "Remark: Excellent" : "Remark: Well Try!!",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              // Text((score < 5) ? "Excellent" : "Very Good"),

              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    selectedAnswerIndex = -1;
                    currentQuestionIndex = 0;
                    score = 0;
                    questionPage = true;
                    setState(() {});
                  },
                  child: const Text(
                    "ReTry",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ))
            ],
          ),
        ),
      );
    }
  }
}
