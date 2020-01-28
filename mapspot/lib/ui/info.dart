import 'package:flutter/material.dart';
import 'package:mapspot/functions/drawer.dart';

class Info extends StatelessWidget{
  
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.feedback),radius: 12,backgroundColor: Colors.transparent,foregroundColor: Colors.grey,),
                title: Text("Hakkımızda"),
              ),
        ),

         Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.language),radius: 12,backgroundColor: Colors.transparent,foregroundColor: Colors.grey,),
                title: Text("Dil Seçimi"),
              ),
        ), 
           Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.rss_feed),radius: 12,backgroundColor: Colors.transparent,foregroundColor: Colors.grey,),
                title: Text("Geri Bildirim"),
              ),
        ),
         Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.insert_drive_file),radius: 12,backgroundColor: Colors.transparent,foregroundColor: Colors.grey,),
                title: Text("Kullanım Kılavuzu"),
              ),
        ),
          
      ],
      ),
      ),
    );
  }

}


