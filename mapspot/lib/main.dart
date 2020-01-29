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
import 'ui/profile.dart';
import 'ui/taskDetails.dart';
import 'ui/continuingTasks.dart';
import 'ui/completedTasks.dart';
import 'ui/records.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/loginPage",
      routes: {
        '/': (context) => LoginPage(),
        '/loginPage': (context) => LoginPage(),
        '/mainPage': (context) => MainPage(),
        '/profile': (context) => Profile(),
        '/register'   : (context) => Register(),
        '/changePassword' : (context) => ChangePassword(),
        '/confirmCode' : (context) => ConfirmCode(),
        '/registerSuccess' : (context) => RegisterSuccess(),
        '/passwordSuccess'  : (context) => PasswordSuccess(),
        '/info' : (context) => Info(),
        '/taskDetails' : (context) => TaskDetails(),
        '/continuingTasks' : (context) => ContinuingTasks(),
        '/completedTasks' : (context) => CompletedTasks(),
        '/records' : (context) => Records(),
    

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Color.fromRGBO(234, 4, 4, 1),
        //brightness: Brightness.dark,
      ),
      //home: NavigasyonIslemleri()
    ),
  );
}
