import 'package:flutter/material.dart';
import 'package:projet_nan/Champ%20de%20saisie/essaie.dart';


class Duo extends StatefulWidget{
  const Duo({super.key, });

  @override
  State<Duo> createState() => _DuoState();
}

class _DuoState extends State<Duo>{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Ma superbe page 2'),
        backgroundColor: Colors.amber,
      ),

      body: Column(
        children: [
          Container(
              color: Color.fromARGB(255, 255, 255, 251),
              child: const ListTile(
                leading: Icon(Icons.person_2_rounded, color: Colors.black, size: 60,),
                title: Text('Mon profil'),
                subtitle: Text("Developpeur Flutter"),
                trailing: Icon(Icons.logout, size: 30,),
              ),
             ),

          const champ(),

        ],
      ),
      bottomNavigationBar: NavigationBar(),

      );
  }

   Widget NavigationBar(){
    return Container(
      color: const Color(0xfff6f8ff),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),

      child: BottomNavigationBar(
        selectedItemColor: Color(0xFF5F67EA),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: [
           const BottomNavigationBarItem(
                    label: 'Accueil',
                    icon: Icon(
                       Icons.home,
                        size: 50,
              )
            ),
    
          BottomNavigationBarItem(
              label: 'Mes tâches',
              icon: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.menu_rounded,
                  size: 30,
                  color: Colors.grey,
                  
                ),
              )
            ),
         BottomNavigationBarItem(
              label: 'Play',
              icon: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius:BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  size: 30,
                  color: Colors.grey,
                  
                ),
              )
            ),
          BottomNavigationBarItem(
              label: 'Mon compte',
              icon: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.person_2_sharp,
                  size: 30,
                  color: Colors.grey,
                  
                ),
              )
            ),
        ],
      ),
    )));
   }

}