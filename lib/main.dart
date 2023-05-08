import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatefulWidget {
  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [
    // Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
  ];

  List<String> questions = [
    'Spaghetto is the singular form of the word spaghetti',
    'Coffee is a berry-based beverage',
    'The capital of Australia is Sydney',
    'The longest river in the world is the Amazon River',
    'Polar bears can only live in the Arctic region, not in the Antarctic.',
    'The United Kingdom is almost the same size as France.',
    'By lying a frog on its back and softly caressing its tummy, it is possible to hypnotize it.',
    'The moon is wider than Australia.',
    'MP sir le padhako bujhidaina',
    'OOP sir is legend',
  ];

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      questions[questionNumber],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    color: Colors.green,
                    child: TextButton(
                      // style: TextStyle(
                      //   color: Colors.green,
                      // ),
                      child: Text(
                        "True",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          questionNumber++;
                        });
                        print("questionNumber");
                        // setState(() {
                        //   scoreKeeper.add(
                        //     Icon(
                        //       Icons.check,
                        //       color: Colors.green,
                        //     ),
                        //   );
                        // });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    color: Colors.red,
                    child: TextButton(
                      child: Text(
                        "False",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          questionNumber++;
                        });
                        print("questionNumber"); // setState(() {
                        //   scoreKeeper.add(
                        //     Icon(
                        //       Icons.close,
                        //       color: Colors.red,
                        //     ),
                        //   );
                        // });
                      },
                    ),
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
