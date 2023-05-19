
import 'package:flutter/material.dart';

class Quard extends StatefulWidget{
  const Quard({super.key, });

  @override
  State<Quard> createState() => _QuardState();
}

class _QuardState extends State<Quard>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Mes Tâches du jour'),
        backgroundColor: Colors.teal,
        
      ),
     
      body: SingleChildScrollView(
          child: Column(
                children: [
          Container(
            color: Colors.white,
            width: 500,
            height: 100,
            child:  const Center(
              child: ListTile(
                leading: Icon(Icons.check, size: 50.0, color: Colors.orange),
                title: Text("Terminer la section 7"),
                trailing: Icon(Icons.delete, size: 50.0, color: Colors.orange),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            color: Colors.white,
            width: 500,
            height: 100,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.check, size: 50.0, color: Colors.orange),
                title: Text("Terminer la section 7"),
                trailing: Icon(Icons.delete, size: 50.0, color: Colors.orange),
              ),
            ),
          ),
          
           SizedBox(height: 20.0,),
          Container(
            color: Colors.white,
            width: 500,
            height: 100,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.check, size: 50.0, color: Colors.orange),
                title: Text("Terminer la section 7"),
                trailing: Icon(Icons.delete, size: 50.0, color: Colors.orange),
              ),
            ),
          ),
          
           SizedBox(height: 20.0,),
          Container(
            color: Colors.white,
            width: 350,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: ListTile(
                leading: Icon(Icons.check, size: 50.0, color: Colors.orange),
                title: Text("Terminer la section 7"),
                trailing: Icon(Icons.delete, size: 50.0, color: Colors.orange),
              ),
            ),
          ),
           SizedBox(height: 20.0,),
          Container(
            color: Colors.white,
            width: 500,
            height: 100,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.check, size: 50.0, color: Colors.orange),
                title: Text("Terminer la section 7"),
                trailing: Icon(Icons.delete, size: 50.0, color: Colors.orange),
              ),
            ),
          ),
                ],
              )),
      
      
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