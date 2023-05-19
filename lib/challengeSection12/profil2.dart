// import 'package:flutter/material.dart';
// import 'package:projet_nan/challengeSection12/monprofil.dart';

// class monprofil extends StatefulWidget {
//   const monprofil({super.key});

//   @override
//   State<monprofil> createState() => _monprofilState();
// }



// class _monprofilState extends State<monprofil> {

//  bool _cocher = false;

//  void _cocherCase(bool value){
//   setState(() {
//     _cocher = value;
//   });
//  }

//   @override
//   void initState(){

//     super.initState();

// }
// @override
// void dispose(){

//   super.dispose();

// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Mon profil"),),
//       body: const SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Card(
//               elevation: 4,
//               color: Colors.purple,
//               child: Center(
//                 child: Column(
//                   children: [

                    

//                     // Text(profil.nom),
//                     // Text(" âge : 0 an"),
//                     // Text("taille: 20 ans"),
//                     // Text(" Genre : Féminin"),
//                     //  Text("Hobbies: "),
//                     //  Text("Langage de programmation favori: Dart"), 


                    
                    
//                   ],
//                 ),
//               ),
//             ),
//              Divider(color: Colors.purple,thickness: 2, height: 30,),

//              Center(
//               child: Text('Modifier les infos', style: TextStyle(color: Colors.purple, fontSize: 15),),

//              ),

//              TextField(
//               decoration: InputDecoration(
//                 hintText: 'Entrer votre nom'
//               ),
//              ),

//               TextField(
//               decoration: InputDecoration(
//                 hintText: 'entrer votre prénom'
//               ),
//              ),

//               TextField(
//               decoration: InputDecoration(
//                 hintText: 'dites nous un secret'
//               ),
//              ),
//              ListTile(
//               leading: IconButton(
//                 icon: Icon(
//                   _cocher? Icons.check_box: Icons.check,
//                 ),
//                 onPressed: (){
//                   setState(() {
//                     _cocher = !_cocher;
//                   });
//                 },),
//               title: Text("Homme"),
//              ),
//               ListTile(
//               leading: Icon(Icons.check_box),
//               title: Text("Femme"),
//              ),




             

//           ],
//         ),
//       ),
//     );
//   }
// }
