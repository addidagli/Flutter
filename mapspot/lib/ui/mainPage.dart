import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPSPOT"),
        actions: [
          Icon(Icons.comment),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.redAccent[700],
        elevation: 50.0,
        leading: Icon(Icons.menu),
      ),
    );
  }

}