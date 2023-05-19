import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:projet_nan/drawer/profil.dart';


class MonDrawer extends StatefulWidget {
  const MonDrawer({super.key});

  @override
  State<MonDrawer> createState() => _MonDrawerState();
}

class _MonDrawerState extends State<MonDrawer> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Mes profil',
      // home: 
      return Scaffold(
        appBar: AppBar(
          title: Text('Mes profils'),
          backgroundColor: Color.fromARGB(255, 74, 228, 169),
          ),
        drawer: Drawer(
          child: GestureDetector(
            onTap: () {},
            child: ListView(
              children: [
              ListTile(
                leading: Icon(Icons.home, color: Colors.black,) ,
                title: Text('Accueil', style: TextStyle(fontSize: 20,),),
              ),
              Divider(thickness: 3,),
              ListTile(
                leading: Icon(Icons.person_3, color: Colors.black,) ,
                title: Text('Mes profils', style: TextStyle(fontSize: 20,),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => Profil()));
                },
              ),
            ],),
          ),
        ),

     
        body: Column(
          children: [
            ListTile(
              leading: Text("Facebook", style: TextStyle(fontSize: 30, color: Colors.blue),),
              trailing: IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.search, size: 40,)),
            ),
            Text("Actualités"),
            
          ],
        )
      );
    // );
  }
}