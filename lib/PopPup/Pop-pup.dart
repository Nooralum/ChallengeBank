import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  Color btnColor = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Pup Navigation'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 600.0),
              child: FloatingActionButton(
                backgroundColor: btnColor,
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(createSnack(montext: 'Snack Evoluée'));
            
                },
                child: Icon(Icons.add),
                
              ),
            ),
            
          ],
        ),
      ),
      
    );
  }
  SnackBar createSnack({required String montext}){
    final content = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.house, color: Colors.white,),
        Text(montext),
      ],
    );
    final snack = SnackBar(
      content: content,
      action: SnackBarAction(
        label: 'changer CouleurBtn',
         onPressed: (){
          setState(() {
            btnColor = (btnColor == Colors.greenAccent) ? Colors.redAccent: Colors.greenAccent;
          });

         },
         textColor: Colors.red,
         ),
         backgroundColor: Colors.greenAccent,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
         elevation: 7,
         behavior: SnackBarBehavior.floating,
      );

    return snack;
  }
}