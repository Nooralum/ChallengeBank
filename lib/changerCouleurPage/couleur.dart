import 'package:flutter/material.dart';

class changeColor extends StatefulWidget {
  const changeColor({super.key});

  @override
  State<changeColor> createState() => _changeColorState();
}

class _changeColorState extends State<changeColor> {
  Color backgroundColor = Colors.white;
   Color textColor = Colors.black;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("changer le couleur de la page"),
        backgroundColor: Colors.amber,),
      body: Center(child: Text("je suis un texte qui change de couleur", style: TextStyle(color: textColor),),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: fonctionCouleur,
         child: Icon(Icons.build),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, 
        
    );
  }
  fonctionCouleur(){
     setState(() {
              backgroundColor = (backgroundColor == Colors.white)? Colors.teal: Colors.white;
              textColor = (textColor == Colors.black)? Colors.white: Colors.black;
          });

  }
}