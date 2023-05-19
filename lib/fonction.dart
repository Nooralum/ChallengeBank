import 'package:flutter/material.dart';



class MaFonction extends StatelessWidget {
  const MaFonction({super.key, required this.touch,});

  final Widget touch;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (builder) => touch ));
      }
    );
     
  }
}