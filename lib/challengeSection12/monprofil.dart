import 'package:flutter/material.dart';
import 'package:projet_nan/challengeSection12/essaie.dart';
import 'package:projet_nan/challengeSection12/profil2.dart';

class profil extends StatelessWidget {
  const profil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  cours(),
    );
  }
}