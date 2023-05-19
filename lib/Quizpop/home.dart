import 'package:flutter/material.dart';
import 'package:projet_nan/Quizpop/Quiz_pages.dart';

class QuizPop extends StatefulWidget {
  const QuizPop({super.key});

  @override
  State<QuizPop> createState() => _QuizPopState();
}

class _QuizPopState extends State<QuizPop> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Flutter"),
      ),
      body: Center(
        child: Card(
          color: Colors.deepOrange.shade100,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child:  Image.asset('assets/image/assetsQuiz/cover.jpg', height: height / 2, width: width * 0.8, fit: BoxFit.cover,),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext ctx){
                      return QuizPages();
                    }));
                }, 
                child : const Text("Commencez le Quiz"))
            ],
          ),
        ),
      ),
    );
  }
}