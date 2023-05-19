import 'package:flutter/material.dart';

class Madisson extends StatefulWidget {
  const Madisson({super.key, required this.touch, required this.Text1, required this.color,});

  final Widget touch;
  final String Text1;
  final color;
  // final Widget icon;

  @override
  State<Madisson> createState() => _MadissonState();
}

class _MadissonState extends State<Madisson> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
            Text(widget.Text1, style: TextStyle(color: widget.color, fontSize: 15),),
            
        ]),
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (builder) => widget.touch));
      },
    );
  }
}