import 'package:flutter/material.dart';



class Trio extends StatefulWidget{
  const Trio({super.key, });

  @override
  State<Trio> createState() => _TrioState();
}

class _TrioState extends State<Trio>{

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma troisième page'),
        backgroundColor: Colors.black,
      ),
      body: Material(
        color: Colors.blue,
        child: InkWell(
            child: Container(
              width: 200,
              height: 80,
              alignment: Alignment.center,
              child: const Text('InkWell'),
            ),
            onTap: () {}),
      ),
      
      
      // ElevatedButton(
      //   style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
      //   onPressed: (){}, 
      //   child: Text("click here")
      //   )

    );
      
  }

}