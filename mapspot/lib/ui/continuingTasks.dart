import 'package:flutter/material.dart';
import 'package:mapspot/functions/drawer.dart';

class ContinuingTasks extends StatefulWidget{
  @override
  _ContinuingTasks createState() =>  _ContinuingTasks();
}

class _ContinuingTasks extends State<ContinuingTasks>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Image.asset('assets/logo.png', fit: BoxFit.cover),
         centerTitle: true,
        actions: [
        ],
        backgroundColor: Color.fromRGBO(234, 4, 4, 1),
        elevation: 20.0,
      ),
    );
  }

}