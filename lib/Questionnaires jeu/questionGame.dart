import 'package:flutter/material.dart';
import 'package:projet_nan/Questionnaires%20jeu/QuizList.dart';


class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
   _QuizPageState createState() => _QuizPageState();

}

class _QuizPageState extends State<QuizPage> {

  // List quiz = [
  //  [ "Le president de la côte d'ivoire est Guillaume", false],
  //  [ "Le president de la côte d'ivoire est Ouattara", true],
  //  ["Le president de la côte d'ivoire est Fatim", false],
  //  [ "Le president de la côte d'ivoire est le gorillle", false],
  // ];

  List<String> questions = [
    "Le president de la côte d'ivoire est Guillaume",
     "Le president de la côte d'ivoire est Ouattara",
     "Le gorille n'a pas de queue",
     "Abobo est un quartier chic d'abidjan",

  ];

    List<bool> answers = [
      false,
      true,
      true,
      false,

    ];

  int questionNumber = 0;

  List<Icon> scorKeeper = [
    // const Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                     Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            questions[questionNumber],
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
                        padding: EdgeInsets.all(15.0),
                        child: TextButton(
                          child: Container(
                            width: 200,
                            height: 100,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                'True',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            bool correctAnswer = answers[questionNumber];
                            setState(() {
                              questionNumber++;
                            });
                           print(questionNumber);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextButton(
                          child: Container(
                            width: 200,
                            height: 100,
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                'False',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              questionNumber++;
                            });
                           print(questionNumber);
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: scorKeeper,
                    )
                    //TODO: Add a Row here as your score keeper
                  ],
     ),
          ),
        ),
        
      ),

    );
    
  }
  
}






