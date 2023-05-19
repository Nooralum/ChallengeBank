
import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:hovering/hovering.dart';


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
             children: <Widget>[
               Expanded(
                 child: MouseRegion(
                  onEnter: (event){
                    monhover();
                  },
                  child: Image.asset('assets/image/dicee/dice$leftDiceNumber.png')
                 ) 
               ),
               Expanded(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                        rightDiceNumber = Random().nextInt(6) + 1;
                        

                      });
                      
             
                    },
                    child: Image.asset('assets/image/dicee/dice$rightDiceNumber.png'))),

              ]),
        )
      ),

     
    );
  }
   void monhover() {
        setState(() {
             leftDiceNumber = Random().nextInt(6) + 1;
             rightDiceNumber = Random().nextInt(6) + 1;
                        
        });

      }

}
