import 'dart:math';

import 'package:flutter/material.dart';

class Disque extends StatefulWidget {
  const Disque({super.key});

  @override
  State<Disque> createState() => _DisqueState();
}

class _DisqueState extends State<Disque> {
   
   int middlePressed = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Pause moi une question'),
        backgroundColor: Colors.blue,
        ),

        body: Center(
           child: Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  middlePressed = Random().nextInt(5) + 1;
                });
                


              },
              child: Image.asset('assets/image/disque/ball$middlePressed.png')
            )),
        ),
      ),
    );
  }
}