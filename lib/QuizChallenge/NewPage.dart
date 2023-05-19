import 'package:flutter/material.dart';
import 'package:projet_nan/QuizChallenge/classQuestion.dart';
import 'package:projet_nan/QuizChallenge/questionClass.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  // List<String> mesquestions = [
  //   "Le recours à l'assistance vidéo à l'arbitrage est autorisé au football",
  //   "L'équipement complet d'un arbitre de foot se compose d'un siflet, un carton jaune et rouge",
  //   "1 litre de Coco-Cola classique contient 18 morceaux de sucre",
  //   "Une seule grenouille peut pondre jusqu'à 2000 oeufs",
  //   "Pour produire un pot de miel, les abeilles ont besoin d'environ 2millions de fleurs",
  // ];
    
    List<Question> Allquestions = [
      Question(ques: "Le recours à l'assistance vidéo à l'arbitrage est autorisé au football", rep: true),
      Question(ques: "L'équipement complet d'un arbitre de foot se compose d'un siflet, un carton jaune et rouge", rep: false),
      Question(ques:  "1 litre de Coco-Cola classique contient 18 morceaux de sucre", rep: true),
      Question(ques: "Une seule grenouille peut pondre jusqu'à 2000 oeufs", rep: false),
      Question(ques: "Pour produire un pot de miel, les abeilles ont besoin d'environ 2millions de fleurs", rep: true)
    ];
  
   int quizIndex = 0;

  //  void checkAnswer(bool userPicked){
  //   bool correctAnswer = Allquestions[quizIndex].question;
  //   if(correctAnswer == false){
  //            print('user got it right');
  //        } else {
  //            print('user got it wrong');
  //          }
  //          setState(() {
  //              toNextQuestion();
  //          });
    
  //  }


  //   List<bool> mesreponses = [
  //   true,
  //   false,
  //   true,
  //   false,
  //   true,
  // ];

   List<Icon> isCorrect = [
    // Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    //  Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    //  Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                      "${Allquestions[quizIndex].question}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.black
                      ),
                    )
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
                            color: Colors.lightGreen,
                            child: const Center(
                              child: Text(
                                'Vrai',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            String? correctAnswer = Allquestions[quizIndex].question;
                            if(correctAnswer == true){
                              print('');
                            } else {
                              print('');
                            }
                            setState(() {
                               toNextQuestion();
                            });
                           print(quizIndex);
                           
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
                            color: Colors.lightGreen,
                            child: const Center(
                              child: Text(
                                'Faux',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            bool? correctAnswer = Allquestions[quizIndex].reponse;
                              if(correctAnswer == false){
                              print('');
                            } else {
                              print('');
                            }
                            setState(() {
                              
                              toNextQuestion();
                            });
                           print(quizIndex);
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: isCorrect,
                    ),
            ],
          ),
        )
        ),


    );
  }
  //   checkAnswer(bool answer){
  //   final question = Allquestions[quizIndex];
  //   bool bonneReponse =  (question.reponse == answer);

  //   if(bonneReponse){
  //     setState(() {
        
  //     });
      
  //   }
  // }
  //  Future<void> showAnswer(bool bonneReponse) async {
  //   Question question = Allquestions[quizIndex];
  //   return await showDialog(
  //     barrierDismissible: false,
  //     context: context, builder: (BuildContext context){
  //     return SimpleDialog(
  //       title: Text('vous avez terminée le niveau'),
  //       children: [
  //         TextButton(
  //           onPressed: (){
  //             Navigator.of(context).pop();
  //             toNextQuestion();
  //         }, 
  //         child: Text('question suivante'),
  //         )
  //       ],
  //     );
  //   });
  // }
  //   Future<void> showResult() async{
  //   return await showDialog(
  //       context: context, 
  //       builder: (BuildContext ctx){
  //     return AlertDialog(
  //       title: Text("Terminé !!"),
  //       actions: [
  //         TextButton(
  //           onPressed: (){
  //             Navigator.of(ctx).pop();
  //             Navigator.of(context).pop();
  //             toNextQuestion();
  //           }, 
  //           child: Text("Ok",))
  //       ],
  //     );
  //   });
  // }
   void toNextQuestion(){
    if(quizIndex < Allquestions.length-1){
       quizIndex++;
    }
    print(quizIndex);
    print(Allquestions.length);

    }
}