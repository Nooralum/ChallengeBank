import 'package:flutter/material.dart';
import 'package:projet_nan/maTodoList/fonctionTodo.dart';
import 'package:projet_nan/maTodoList/todoItem.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final maList = ToDo.todolist();
  List<ToDo> search = [];
  final monController = TextEditingController();

  @override
  void initState() {
    search = maList;
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 50,
                          bottom: 20,
                          ),
                          child: const Text(
                            "Toutes ma liste",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                      ),
                      for(ToDo todo in search)
                      ToDoItem(
                        todo: todo,
                        TodoChanged: changeList,
                        SupprimerItem: _deleteItem,
                        ),
                    
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child:  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                     color: Colors.white,
                     boxShadow: const [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                     )],
                     borderRadius: BorderRadius.circular(10),
                     ),
                     child: TextField(
                      controller: monController,
                      decoration: const InputDecoration(
                        hintText: 'Ajouter une nouvelle tâche',
                        border: InputBorder.none
                      ),

                     ),
                     

                  )
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom : 20,
                    right: 20,
                    ),
                    child: ElevatedButton(
                      child: Text("+", style:TextStyle(fontSize: 40,),),
                      onPressed: (){
                        _addItem(monController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        minimumSize: Size(60, 60),
                        elevation: 10,
                      ),

                      ),

                  
                  ),
               
              ],
            ),

          )
        ],
      ),
    );
  }

  void changeList(ToDo todo){
    setState(() {
      todo.isDone = !todo.isDone;
      
    });
  }

 void _deleteItem(String id){
      setState(() {
        maList.removeWhere((item)  => item.id == id );
        
      });
    }

  void _addItem(String todo){
    setState(() {
      maList.add(ToDo(
      id: DateTime.now().millisecondsSinceEpoch.toString(), 
    Text: todo));
    });
    monController.clear();
  }

  void _research(String enteredKeyword){
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty){ // si le mot clé entré est vide,
      results = maList;  //  les résultats seront pris dans la liste des taches
    } else {
      results = maList
      .where((item) => item.Text!
          .toLowerCase()
          .contains(enteredKeyword.toLowerCase()))
      .toList();
    }
    setState(() {
       search = results;
    });

  }

  Widget searchBox(){
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child:  TextField(
                onChanged: (value) =>  _research(value),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 20,
                      minWidth: 25,
                    ),
                    border: InputBorder.none,
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.grey),

                ),
              ),
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.amber,
      elevation: 0,
      title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,
          color: Colors.black,
          size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/image/nat.jpg"),
            ),
          )
        ],
      ),);
  }
}