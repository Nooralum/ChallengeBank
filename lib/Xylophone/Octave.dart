import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MesNotes extends StatelessWidget {
  const MesNotes({super.key,});

  

  @override
  Widget build(BuildContext context) {
    var mataille = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PianoTile( Colors.red, ('note1.wav'),mataille.height,),
            PianoTile( Colors.orange , ('note2.wav'), mataille.height,),
            PianoTile( Colors.yellow , ('note3.wav'), mataille.height,),
            PianoTile( Colors.green , ('note4.wav'), mataille.height,),
            PianoTile( Colors.teal , ('note5.wav'), mataille.height,),
            PianoTile( Colors.blue , ('note6.wav'), mataille.height,),
            PianoTile( Colors.purple , ('note7.wav'), mataille.height,),
          ],
        ),

      )
      );
    
  }
}


Widget PianoTile(final Color couleur, final nbr, final double Size){
  return TextButton(
              onPressed: (){
                final player = AudioPlayer();
                player.play(AssetSource(nbr));
              },
              child: Container(
                height: Size,
                width: 100,
                decoration: BoxDecoration(
                  color: couleur,
                ),
              ),
     
    );
}