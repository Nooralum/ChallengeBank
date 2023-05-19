import 'package:flutter/material.dart';
import 'package:projet_nan/facebook/publicationF.dart';

class Fbook extends StatefulWidget {
  const Fbook({super.key, });

  @override
  State<Fbook> createState() => _FbookState();
  
}

class _FbookState extends State<Fbook> {
  Color macouleur = Colors.black;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basics"),
   
    ),
    body: 
       SingleChildScrollView(
         child: Column(
           children: [
             
                 Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    imagepicker(),
                    Positioned(
                     bottom: 18,
                     child: Container(
                        padding:  const EdgeInsets.only(top: 50),
                        height: 200,
                        width: 200,
                       child: const CircleAvatar(
                         backgroundImage: AssetImage("assets/image/aven.jpg"),
                        ),
                       
                       ),
                                         
                    ),        
                  ],
                
                 ),


            const Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 mainAxisSize: MainAxisSize.max,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                      Spacer(),
                      Text("Miss Noor Soro", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),

                  ],
                 ),
           const Padding(
             padding: EdgeInsets.all(5),
             child: Text("La foi vient de ce qu'on entend et ce qu'on entend vient de la parole de Dieu"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      width: 300,
                      height: 55,
                      decoration: const BoxDecoration(
                        color:Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                  
                  child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: DecoratedBox(
                    decoration: ShapeDecoration(
                       color: Colors.blue,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
            
                        ),
            
                      ),
                      child: const Text(
                        'Modifier le profil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.white,
                        ),
                      ),
                  ),
                  ),
                  
              
                  ),




                  const SizedBox(
                    width: 19,
                  ),
                  Container(
                    width: 70,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const  Icon(
                      Icons.edit,
                      color: Colors.white,

                    ),
                  ),
                  
                ],
                
            
              
              ),
              
            ),
            const Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.orange,
               ),
               
            Row(
          
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                   child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                      "A propos de moi",
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    

                ),
                
                
              ),
              
            ),
            
                  
             ),
                Spacer(),
                Container(
                  margin: const EdgeInsets.all(15),
                       width: 17,
                       height: 20,
                       child: GestureDetector(
                          child: Icon(Icons.edit, color: macouleur),
                                onTap: (){ 
                                    setState(() {
                                      macouleur == Colors.green
                                      ? macouleur = Colors.black
                                      : macouleur = Colors.green;   
                                          }
                                          
                                          );
                                                
                                  },

                    )
           
                ),


               
                
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                       Icon(Icons.home),
                       Text(
                        "bouaké, Côte d'ivoire",

                       ),
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                       Icon(Icons.badge_rounded),
                       Text(
                        "Dévoloppeur IOS",

                       ),
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                       Icon(Icons.favorite),
                       Text(
                        "Fiancée",

                       ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Colors.orange,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Amis", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              )
              
            ),

            Container(
              height: 260,
              child: Stack(children: [ListView(physics: BouncingScrollPhysics(), scrollDirection: Axis.horizontal,children: [
            Container(
              margin: EdgeInsets.all(12.0),
              width: 200,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(image: AssetImage('assets/image/nat.jpg',), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )
             
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              width: 200,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(image: AssetImage('assets/image/nat.jpg',), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )
             
            ), 

             Container(
              margin: EdgeInsets.all(12.0),
              width: 200,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(image: AssetImage('assets/image/nat.jpg',), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )
             
            ), 
              ],)]),
            ),


            

            const Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.orange,
               ),


          Pub(UnText: "A l'instant", UnText1: "",),
          Pub(UnText: "Il y'a 5heure", UnText1: ""),
          Pub(UnText: "Il y'a 2 jours", UnText1: ""),

         ],
                  
                ),
              ),

            );

        
      
                  


    

  }

  
}


Widget imagepicker() {
  return Container(
    alignment: Alignment.topCenter,
    height: 350,
    child: Image.asset("assets/image/Cross.jpg", fit: BoxFit.fitWidth,), );
}


