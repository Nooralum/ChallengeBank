import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Photo extends StatefulWidget {
  const Photo({super.key, required this.title});
  final String title;

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File? fichierImage;
  ImagePicker picker = ImagePicker();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            (fichierImage == null)? Text('aucune image') : Image.file(fichierImage!),
            Row(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 FloatingActionButton(onPressed: (){
                      pickImage(ImageSource.gallery);
                  }, 
                  child: Icon(Icons.photo_album),
             ),

                FloatingActionButton(onPressed: (){
                  AlertDialog alert = AlertDialog(
                  title: Text('Mon Pop-up'),
                  content: Text('Etes-vous sûr de vouloir supprimer?'),
                  actions: [
                    TextButton(
                      onPressed:(){
                        clearFile();
                        
                      }, 
                      child: Text('Delete'),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                      }, 
                      child: Text('Annuler'),
                      )
                    
                  ],

                  );
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                     builder: (builder){
                     return alert;
                     });
                  }, 
                  child: Icon(Icons.delete),
             ),

              FloatingActionButton(onPressed: (){
                      pickImage(ImageSource.camera);
                  }, 
                  child: Icon(Icons.camera_enhance),
             ),

               ],
            ),
             

          ],
        ),
      ),
    );
    
  }
  Future pickImage(ImageSource source) async {
    PickedFile? choisirImage = await picker.getImage(source: source);
   setState(() {
      if(choisirImage == null){
       print("Nous n'avons pas pu récupéré d'image");
    } else {
      fichierImage= File(choisirImage.path);
    }
   });
  }

  clearFile () {
    setState(() {
      fichierImage = null;
    });
  }

}


