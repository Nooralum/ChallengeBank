import 'package:flutter/material.dart';
import 'package:projet_nan/Quizpop/Questions.dart';
import 'package:projet_nan/Quizpop/Text_style.dart';
import 'package:projet_nan/Quizpop/data.dart';

class QuizPages extends StatefulWidget {
  const QuizPages({super.key});

  @override
  State<QuizPages> createState() => _QuizPagesState();
}

class _QuizPagesState extends State<QuizPages> {

  List<Question> questions = Datas().listeQuestions;
  int index = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    final Question question = questions[index];
    return Scaffold(
      appBar: AppBar(
        title: Text('score : $score'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(8),
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidthStyle(data:'Question numéro : ${index  + 1} / ${questions.length}', color: Colors.deepOrange, style: FontStyle.italic,),
              TextWidthStyle(data: question.question, size: 21, weight: FontWeight.bold,),
              // Text(question.question),
              Image.asset(question.getImage()),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  answerBtn(false),
                  answerBtn(true),
                ],

              )
            ],

          ),

            ),
         
        ),
      ),
    );
  }
  ElevatedButton answerBtn(bool b){
    return ElevatedButton(
      onPressed: (){
        checkAnswer(b);

      }, 
      child : Text((b) ? 'Vrai' : 'Faux'),
      style: ElevatedButton.styleFrom(
        primary: (b)? Colors.greenAccent: Colors.redAccent),
      );
  }
  checkAnswer(bool answer){
    final question = questions[index];
    bool bonneReponse =  (question.reponse == answer);

    if(bonneReponse){
      setState(() {
        score++;
      });
      
    }
    showAnswer(bonneReponse);
  }
 
  Future<void> showAnswer(bool bonneReponse) async {
    Question question = questions[index];
    String title = (bonneReponse)? "C'est gagné! " : "Oulalahh !";
    String imageToShow = (bonneReponse)? "vrai.jpg": "faux.jpg";
    String path = 'assets/image/assetsQuiz/$imageToShow';
    return await showDialog(
      barrierDismissible: false,
      context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: TextWidthStyle(data: title,),
        children: [
          Image.asset(path),
          TextWidthStyle(data: question.explication),
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
              toNextQuestion();
          }, 
          child: TextWidthStyle(data: 'Passer à la question suivante'))
        ],
      );
    });
  }

  Future<void> showResult() async{
    return await showDialog(
        context: context, 
        builder: (BuildContext ctx){
      return AlertDialog(
        title: TextWidthStyle(data: "Terminé !!"),
        content: TextWidthStyle(data: "votre score est de : $score points."),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.of(ctx).pop();
              Navigator.of(context).pop();
            }, 
            child: TextWidthStyle(data: "Ok",))
        ],
      );
    });
  }
  void toNextQuestion(){
    if(index < questions.length-1){
       index++;
       setState(() {
       });
    } else {
      showResult();
    }

    }
   
}