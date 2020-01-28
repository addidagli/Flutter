import 'package:flutter/material.dart';
import 'package:mapspot/ui/changePassword.dart';
import 'ui/loginPage.dart';
import 'ui/mainPage.dart';
import 'ui/register.dart';
import 'ui/changePassword.dart';
import 'ui/confirmCode.dart';
import 'ui/registerSuccess.dart';
import 'ui/passwordSuccess.dart';
import 'ui/info.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/loginPage",
      routes: {
        '/': (context) => LoginPage(),
        '/loginPage': (context) => LoginPage(),
        '/mainPage': (context) => MainPage(),
        '/register'   : (context) => Register(),
        '/changePassword' : (context) => ChangePassword(),
        '/confirmCode' : (context) => ConfirmCode(),
        '/registerSuccess' : (context) => RegisterSuccess(),
        '/passwordSuccess'  : (context) => PasswordSuccess(),
        '/info' : (context) => Info(),
    

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.blue,
        //brightness: Brightness.dark,
      ),
      //home: NavigasyonIslemleri()
    ),
  );
}
