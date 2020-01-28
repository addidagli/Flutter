import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapspot/ui/mainPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: true,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return uygulamaGovdesi();
            } else {
              return uygulamaGovdesiLandscape();
            }
          },
        ));
  }

  Widget uygulamaGovdesi() {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Image.asset("assets/background.png"),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 50.0),
              child: Column(
                children: <Widget>[
                  Row(
                    //mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: ScreenUtil.getInstance().setWidth(600),
                        height: ScreenUtil.getInstance().setHeight(250),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(150),
                  ),
                  formCard(context),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Beni Hatırla",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "Poppins-Medium")),
                      GestureDetector(
                        child: Checkbox(
                          value: _isSelected,
                          onChanged: (deger) {
                            setState(() {
                              _isSelected = deger;
                            });
                          },
                          activeColor: Colors.grey,
                          checkColor: Colors.black,
                        ),
                      ),
                      SizedBox(),
                      InkWell(
                        child: Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: "Poppins-Medium",
                              fontSize: ScreenUtil.getInstance().setSp(24)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/changePassword");
                        },
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(600),
                      height: ScreenUtil.getInstance().setHeight(100),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.red.shade300, Colors.red.shade700]),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/mainPage");
                          },
                          child: Center(
                            child: Text("GİRİŞ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "CustomIcon",
                                    fontSize: 22,
                                    letterSpacing: 1.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  InkWell(
                    child: Text(
                      "Henüz hesabin yok mu? Kayit Ol",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "Poppins-Medium",
                          fontSize: ScreenUtil.getInstance().setSp(28)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget uygulamaGovdesiLandscape() {
    return Container();
  }
}

Widget formCard(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Container(
        child: Text("",
            style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26))),
      ),
      Container(
        // width: double.infinity / 2,
        //height: MediaQuery.of(context).size.height / 12,
        color: Colors.transparent,
        child: TextField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              labelText: "Email",
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
              filled: true,
              fillColor: Colors.white70,
              ),
              cursorColor: Colors.green,
              
        ),
      ),
      Container(
        child: Text("",
            style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26))),
      ),
       Container(
        color: Colors.transparent,
        child: TextField(
          autofocus: true,
          obscureText: true,
          decoration: InputDecoration(
            hoverColor: Colors.green,
              prefixIcon: Icon(Icons.lock),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              labelText: "Şifre",
              hintText: "Şifre",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
              filled: true,
              fillColor: Colors.white70,
              ),
        ),
      ),
    ],
  );
}
