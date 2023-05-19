import 'package:flutter/material.dart';
import 'package:projet_nan/clima/services/location.dart';
import 'package:http/http.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

@override
  void initState() {
    super.initState();
    getLocation();
  }
  
  void getLocation() async{
    Location location = Location();
    
    await location.getCurrentPosition();
    print(location.latitude);
    print(location.longitude);
  }

  void getData(){
  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    ),
    );
    
    
  }
}
