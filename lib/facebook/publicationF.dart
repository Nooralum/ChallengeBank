import 'package:flutter/material.dart';

class Pub extends StatelessWidget {
  const Pub({super.key, required this.UnText, required this.UnText1});
  final String UnText;
  final String UnText1;

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: EdgeInsets.only(top: 20.0),
              width: 550,
              height: 480,
              color: Colors.grey,
              child:
                  Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                               margin: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/image/aven.jpg'),
                            ),
                           ),
                        Padding(
                              padding:  EdgeInsets.symmetric(vertical: 20),
                              child: Text(UnText1),
                            )
                            ],
                          ),
                        Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(UnText),
                            ),

                           

                        ],
                      ),

                      const Text("Ceci est un commentaire de ma publication faite à l'instant même"),

                      Container (
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 400,
                        height: 220,
                        decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/dan.jpg"), fit: BoxFit.cover),
                       ),

                    ), 
                    
                    Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                        labelText: 'Entrer votre commentaire',
                        )
                       ),
                     ),

                   const Padding(
                      padding:  EdgeInsets.all(15.0),
                      child: ListTile(
                        leading: Icon(Icons.favorite, size: 50, color: Colors.black,),
                        title: Text("350 likes"),
                        trailing: Text("1K commentaire"),
                       
                      ),
                    ),
                    ],

                  ),
              
         );

         
  }
}

