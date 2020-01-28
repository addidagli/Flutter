import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mapspot/functions/drawer.dart';

class MainPage extends StatelessWidget{
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