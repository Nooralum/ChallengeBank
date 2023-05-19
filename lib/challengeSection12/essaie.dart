import 'package:flutter/material.dart';

class cours extends StatefulWidget {
  const cours({super.key});

  @override
  State<cours> createState() => _coursState();

}

class _coursState extends State<cours> {
  bool textButtonPressed = false;
  String prenom = '';
 late TextEditingController controller;
 bool switchValue = true;
  IconData icon = Icons.favorite;

  @override
  void initState() {
   
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
     controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((updateAppBarText()),)

        
      ),

      body: Center(
        child: Column(
          children: [

            TextButton
            (
              onPressed:  updateAppBar,
              child: Text("je suis un texteButton")),
        
          ElevatedButton(
            onPressed: (){
            }, 
            child: const Text('Un boutton'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              elevation: 4,
            ),
            ),

            IconButton( 
              onPressed: (){
                 setIcon();
              }, 
              icon: Icon(icon),
              color: Colors.pink,
              splashColor: Colors.pinkAccent,
              
              ),

              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'Entrer votre prénom',
                 
                ),
                // keyboardType: TextInputType.emailAddress,
                onChanged: (newString){
                  setState(() {
                    prenom = newString;

                  });
                },
              ),
              Text(prenom),
              TextField(
                controller: controller ,
                decoration: const InputDecoration(
                  hintText: 'entrer votre nom',
                ),
                  onChanged: ((newvalue){
                    setState(() {
                      
                    });
                  }),


              
              ),
              Text(controller.text),


              Row(
                children: [
                  Text((switchValue)? "j'aime les chiens": "les chiens sont chiant"),
                  Switch(value: switchValue, 
                  onChanged: ((bool){
                    setState(() {
                      switchValue = bool;
                      
                    });
                  })
                  ),
                ],
              )
          ],
        )),
    ) ;
  }
  setIcon(){
    setState(() {
      icon = (icon == Icons.favorite) ? Icons.favorite_border : Icons.favorite;
      
    });
 
}

updateAppBar(){
  setState(() {
    textButtonPressed = !textButtonPressed;

  });

}

String updateAppBarText(){
  return(textButtonPressed)? "les interactifs" : "Je m'y connais un peu";
}
}

