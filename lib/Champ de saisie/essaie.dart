import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class champ extends StatefulWidget {
  const champ({super.key});

  @override
  _champState createState() => _champState();
}

class _champState extends State<champ> {
  String _textField = '';
  final myController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    String valeur = myController.text;
    return Column(
        children: [
          TextField(
            controller: myController,
            keyboardType: TextInputType.number,
             decoration: const InputDecoration(
             labelText:"Entrer", 
             hintText: "Veuillez saisir des chiffres uniquement",
         ),
            onChanged: (String value) {
              setState(() {
                _textField = value;
              });
            },
          ),
          // Text(_textField),
          Text("${valeur} ${valeur.toWord(lang: NumStrLanguage.English)}")
        ],
      );  
  }
}