import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Register extends StatefulWidget{
  @override
  _Register createState() => _Register();

}
class _Register extends State<Register>{
 
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
                    padding: EdgeInsets.only(top: 20.0),
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
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: ScreenUtil.getInstance().setWidth(600),
                        height: ScreenUtil.getInstance().setHeight(250),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(20),
                  ),
                  formCard(context),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(600),
                      height: ScreenUtil.getInstance().setHeight(100),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/registerSuccess");
                          },
                          child: Center(
                            child: Text("KAYIT OL",
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
          margin: EdgeInsets.only(top: 5),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: "Adı Soyadı",
                labelText: "Adı Soyadı",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: "Email",
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: "Telefon",
                hintText: "Telefon",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: "Şifre",
                hintText: "Şifre",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: "Şifre Tekrar",
                hintText: "Şifre Tekrar",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
      ],
    );
}
