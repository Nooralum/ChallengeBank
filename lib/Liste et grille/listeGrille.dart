import 'package:flutter/material.dart';

class listegrille extends StatefulWidget {
  const listegrille({super.key});

  @override
  State<listegrille> createState() => _listegrilleState();

}

List<String> courses = [
  "Cartotte", 
  "Tomates", 
  "Cerise", 
  "Mangue", 
  "Produit vaisselle", 
  "Soda", "Nutella", 
  "Viande", 
  "Poisson",
  "Salade",
  "Huile d'olive",
  "Pain",
  "Cafe",
  "Beurre",
  "Cacao",
   ];

   List<Courses> malistDeCourse = [];

   List<Widget> itemCourse(){
    List<Widget> items =[];
    courses.forEach((element) {
      final widget = elementToShow(element);
     
      items.add(widget);
    });
    return items;
   }

   Widget elementToShow(String element){
    return Padding(
        padding: EdgeInsets.all(18),
        child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(element),
          const Icon(Icons.check_box_outline_blank),
        ],
      )
        
    );
   }

class _listegrilleState extends State<listegrille> {
  @override
  Widget build(BuildContext context) {
      
      courses.forEach((element){
        malistDeCourse.add(Courses(element)); 
      });

    return Scaffold(
      appBar: AppBar(
        title: Text('liste et grille'),
      ),

      body:  ListView.separated(
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index){
          return   ListTile(
              title: Text(malistDeCourse[index].element),
              leading: Text(index.toString()),
              trailing: Icon(Icons.check_box_outline_blank),
              // tileColor: Colors.indigoAccent,
              onTap: (){
                print("ok approuvé $index ");
              },
            );
            }, separatorBuilder: (BuildContext context, int index) { 
              return const Divider(color: Colors.indigo, thickness: 1,);
             }, 
         // elementToShow(courses[index]); 
        // separatorBuilder: (BuildContext context, int index){
        //   return const Divider(color: Colors.indigoAccent,);
        // }, 
        // itemCount:courses.length
        )
      //  ListView.builder(
      //   itemCount: courses.length,
      //   itemBuilder: (BuildContext context, int index){
      //     final element = courses[index];
      //     return elementToShow(element);
      //   })
    );
  }
}

class Courses {
  String element;
  bool bought = false;

  Courses(this.element);

  update(){
    bought = true;
  }

}