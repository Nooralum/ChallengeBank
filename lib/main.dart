import 'package:flutter/material.dart';
import 'package:projet_nan/Champ%20de%20saisie/duo.dart';
import 'package:projet_nan/Formulaire/connexion.dart';
import 'package:projet_nan/Liste%20et%20grille/listeGrille.dart';
import 'package:projet_nan/Naviguer.dart';
import 'package:projet_nan/PopPup/Pop-pup.dart';
import 'package:projet_nan/Questionnaires%20jeu/questionGame.dart';
import 'package:projet_nan/QuizChallenge/NewPage.dart';
import 'package:projet_nan/Quizpop/home.dart';
import 'package:projet_nan/Xylophone/xylophone.dart';
import 'package:projet_nan/appareil%20photo/photo.dart';
import 'package:projet_nan/challengeSection12/monprofil.dart';
import 'package:projet_nan/changerCouleurPage/couleur.dart';
import 'package:projet_nan/clima/screens/loading_screen.dart';
import 'package:projet_nan/dicee%20section7/dicee.dart';
import 'package:projet_nan/disque%20magique%20section%208/disque.dart';
import 'package:projet_nan/drawer/drawer.dart';
import 'package:projet_nan/facebook/facebook.dart';
import 'package:projet_nan/healthy/home.dart';
import 'package:projet_nan/maTodoList/maTodoList.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ma premiere page',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Ma premiere page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        
       
      ),

      /// Mon drawer
    
      drawer: Drawer(
        child: GestureDetector(
          onTap: (){},
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.person_2, color: Colors.black, size: 50,),
                title: Text("SORO NAFO NOURA"),
                subtitle: Text("Developpeur flutter"),
                trailing: Icon(Icons.logout_outlined),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.school, color: Colors.teal,),
                title: Text("Mes Cours et Exercice"),
              ),
               Divider(),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Madisson(touch: Fbook(), Text1: "Ch1: Ma page Facebook", color: Colors.teal,),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child:  Madisson(touch: Duo(), Text1: "Ch2: Champs de saisie",color: Colors.teal,),
                ),
                Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: changeColor(), Text1: "Ch3: Couleur page",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: connexionForm(), Text1: "Ch4: formulaire",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: todolist(), Text1: "Ch5: TodoList",color: Colors.teal,),
                ),
                
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: profil(), Text1: "Ch6: challenge section 12",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: DicePage(), Text1: "Ch7: section 7 anglais",color: Colors.teal,),
                ),
                Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: Disque(), Text1: "Ch8: section 8 anglais",color: Colors.teal,),
                ),
                  Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: Xylo(), Text1: "Ch9: section 9 anglais",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: QuizPage(), Text1: "Ch10: Questionnaires",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: Photo(title: 'mon appareil photo',), Text1: "Ch11: Mon appareil photo",color: Colors.teal,),
                ),
                Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: Popup(), Text1: "Ch12: Pop-up",color: Colors.teal,),
                ),
                 Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: QuizPop(), Text1: "Ch13: challenge Pop-up",color: Colors.teal,),
                ),
                Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: MyQuiz(), Text1: "Ch14: challenge Quiz",color: Colors.teal,),
                ),
                Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: Calculator(), Text1: "Ch15: Section 12 anglais",color: Colors.teal,),
                ),
                  Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: LoadingScreen(), Text1: "Ch16: Section 13 anglais",color: Colors.teal,),
                ),
                  Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: listegrille(), Text1: "Ch19: Liste et grille",color: Colors.teal,),
                ),
                  Divider(),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Madisson(touch: MonDrawer(), Text1: "Ch20: Profil drawer",color: Colors.teal,),
                ),
               
                
            ],


          ),
        ),
      

      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
      child : Container(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            const Center( 
              child: CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('assets/image/nan_logo.png'),
                // backgroundColor: Colors.purple,
              ),
            ),
            



            const SizedBox(height: 10.0,),

            const Text(
              'Noor Soro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
            ),
            const Text(
              "Flutter developer",
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 5,
              ),
            ),
            const Divider(color: Colors.black, height: 40,),
            const SizedBox(height: 15.0,),
           Container(
            width: 380,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const ListTile(
               title: Text('0787972997'),
               leading: Icon(Icons.phone, color: Colors.teal,),
            ),
           ),
           const SizedBox(height: 15.0,),
           Container(
            width: 380,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: const ListTile(
              title: Text('soronoor20@gmail.com'),
              leading: Icon(Icons.mail, color: Colors.teal,),
               
      
            ),
           ),
          ],
        ),
        
      )),  
                
            );
      

  }
}

Widget imagepicker() {
  return Container(
    alignment: Alignment.topCenter,
    height: 350,
    child: Image.asset("assets/image/pizza.jpg", fit: BoxFit.fitWidth,), );
}