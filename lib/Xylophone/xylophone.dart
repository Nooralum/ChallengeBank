import 'package:flutter/material.dart';
import 'package:projet_nan/Xylophone/Octave.dart';

class Xylo extends StatefulWidget {
  const Xylo({super.key});

  @override
  State<Xylo> createState() => _XyloState();
                             
}

class _XyloState extends State<Xylo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MesNotes(),
            MesNotes(),
            MesNotes(),
          ],
      
        ),
      )
      

        );
     
      
  }
}