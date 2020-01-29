import 'package:flutter/material.dart';
import 'package:mapspot/functions/drawer.dart';

class Records extends StatefulWidget {
  @override
  _Records createState() => _Records();
}

class _Records extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Image.asset('assets/logo.png', fit: BoxFit.cover),
        centerTitle: true,
        actions: [],
        backgroundColor: Color.fromRGBO(234, 4, 4, 1),
        elevation: 20.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child :Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Tarih",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "Kayıt Süresi",
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                Divider(height: 10,color: Colors.grey,indent: 10,),
                Container(
                  child: Card(
                    
                    elevation: 10,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("01.01.2020 14:48"),
                          Text("25 dk"),
                          Icon(Icons.file_upload),
                        ],
                      ),
                      
                  ),
                  
                ),
                ),
                Divider(height: 10,color: Colors.grey,indent: 10,),

                 Container(
                  child: Card(
                  
                    elevation: 10,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("01.01.2020 14:48"),
                          Text("25 dk"),
                          Icon(Icons.file_upload),
                        ],
                      ),
                      
                  ),
                  
                ),
                ),
                Divider(height: 10,color: Colors.grey,indent: 10,),
                 Container(
                  child: Card(
                    
                    elevation: 10,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("01.01.2020 14:48"),
                          Text("25 dk"),
                          Icon(Icons.file_upload),
                        ],
                      ),
                      
                  ),
                  
                ),
                ),
                Divider(height: 10,color: Colors.grey,indent: 10,),
                Container(
                  child: Card(
                    
                    elevation: 10,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("01.01.2020 14:48"),
                          Text("25 dk"),
                          Icon(Icons.file_upload),
                        ],
                      ),
                      
                  ),
                  
                ),
                ),
                Divider(height: 10,color: Colors.grey,indent: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
