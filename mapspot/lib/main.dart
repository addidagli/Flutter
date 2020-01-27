import 'package:flutter/material.dart';
import 'package:mapspot/ui/changePassword.dart';
import 'ui/loginPage.dart';
import 'ui/mainPage.dart';
import 'ui/register.dart';
import 'ui/changePassword.dart';
import 'ui/confirmCode.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/confirmCode",
      routes: {
        '/': (context) => LoginPage(),
        '/loginPage': (context) => LoginPage(),
        '/mainPage': (context) => MainPage(),
        '/register'   : (context) => Register(),
        '/changePassword' : (context) => ChangePassword(),
        '/confirmCode' : (context) => ConfirmCode(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        //brightness: Brightness.dark,
      ),
      //home: NavigasyonIslemleri()
    ),
  );
}
