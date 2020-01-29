import 'package:flutter/material.dart';
import 'dart:io';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          /*UserAccountsDrawerHeader(
          //accountName: Text("Alaattin Dağlı"),
          //accountEmail: Text("alaattindagli@piton.com.tr"),
          currentAccountPicture:  Image.asset("assets/addi.jpg", fit: BoxFit.cover,),
          otherAccountsPictures: <Widget>[
            CircleAvatar(backgroundColor: Colors.tealAccent, child: Text("AD"),),
            //CircleAvatar(backgroundColor: Colors.purple, child: Text("AD"),),
            //Image.network("https://i4.hurimg.com/i/hurriyet/75/0x0/5c334ba4c03c0e1a0c4cbad1.jpg")
          ],
          ),*/
          Expanded(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Alaattin Dağlı"),
                  accountEmail: Text("alaattindagli@piton.com.tr"),
                  currentAccountPicture:  Image.asset(
                    "assets/addi.jpg",fit: BoxFit.cover,), 
                    
                  
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.tealAccent,
                      child: Text("AD"),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/mainPage");
                  },
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profilim"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/taskDetails");
                  },
                  child: ListTile(
                    leading: Icon(Icons.check_box),
                    title: Text("Görevler"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/info");
                  },
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Bilgi"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/records");
                  },
                  child: ListTile(
                    leading: Icon(Icons.save),
                    title: Text("Kayıtlar"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    alertDialogGoster(context);
                  },
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Exit"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void alertDialogGoster(BuildContext ctx) {
  showDialog(
      context: ctx,
      barrierDismissible:
          false, //alert ekranı açılınca boşluğa tıklayınca dialogun kapanması için true yap
      builder: (ctx) {
        return AlertDialog(
          //title: Text("Başlık"),
          content: SingleChildScrollView(
              child: ListBody(
            children: <Widget>[
              Text("Uygulamadan çıkmak istediğinize emin misiniz?", style: TextStyle(fontSize: 20),),
            ],
          )),
          actions: <Widget>[
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("Evet"),
                    onPressed: () => exit(0),
                  ),
                  FlatButton(
                    child: Text("Vazgeç"),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
