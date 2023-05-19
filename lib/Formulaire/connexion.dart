import 'package:flutter/material.dart';

class connexionForm extends StatefulWidget {
  const connexionForm({super.key,});




  @override
  State<connexionForm> createState() => _connexionFormState();
}

class _connexionFormState extends State<connexionForm> {

  bool _Obsure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.amber,
            padding: EdgeInsets.all(50.0),
            child: Form(
              child: Column(
                children: [
                  Icon(Icons.login_outlined, size: 50,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nom', 
                    ),
                  ),
      
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Prénom',
                    ),
                  ),
                   TextField(
                    obscureText: _Obsure,
                    decoration: InputDecoration(
                    labelText: "Mot de passe",
                    // enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.blue),
                    // borderRadius: BorderRadius.circular(15),
                    // ), 
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _Obsure? Icons.visibility_off: Icons.visibility 
                      ),
                      onPressed: (){
                        setState(() {
                          _Obsure = !_Obsure;
                        });
                      }, 
                      ) ),),
      
                 TextButton(
                  onPressed: (){
                    // MaFonction(touch: MyApp());
                  }, 
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    width: 150,
                    height: 50,
                    child: Text('connexion', style: TextStyle(fontSize: 20, color: Colors.white),),
      
                  )
                  
                  
                  )
      
                  
                  
                ],
              )),
          ),
        ),
      ),
    );
  }

}
