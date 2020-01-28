import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterSuccess extends StatefulWidget {
  @override
  _RegisterSuccess createState() => _RegisterSuccess();
}

class _RegisterSuccess extends State<RegisterSuccess> {
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
                    height: ScreenUtil.getInstance().setHeight(150),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      elevation: 10,
                      child: (ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.check_circle),
                            radius: 12,
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          subtitle: Text(
                            "Kaydınız başarıyla oluşturuldu!",
                            style: TextStyle(
                              
                              fontSize: 16,
                              color: Colors.green,
                              fontFamily: "Poppins-medium",
                              
                             
                            ),
                          ))),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(600),
                      height: ScreenUtil.getInstance().setHeight(100),
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginPage");
                          },
                          child: Center(
                            child: Text("GİRİŞ YAP",
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
