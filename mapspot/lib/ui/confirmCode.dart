import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ConfirmCode extends StatefulWidget{
  @override
  _ConfirmCode createState() => _ConfirmCode();

}
class _ConfirmCode extends State<ConfirmCode>{
 
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
                        leading: CircleAvatar(child: Icon(Icons.error),radius: 12,),
                        subtitle: Text("Kaydınızı tamamlamak için lütfen mailinize gönderilen onay kodunu giriniz",style: TextStyle(fontSize: 16),)
                      )),
                    ),
                  ),
                  formCard(context),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(600),
                      height: ScreenUtil.getInstance().setHeight(100),
                      margin: EdgeInsets. only(top: 40),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          /*onTap: () {
                            Navigator.pushNamed(context, "/anasayfa");
                          },*/
                          child: Center(
                            child: Text("KAYDET",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins-Bold",
                                    fontSize: 18,
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
          margin: EdgeInsets.only(top: 10),
          width: double.infinity / 2,
          height: MediaQuery.of(context).size.height / 12,
          color: Colors.white70,
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                
                hintText: "Onay Kodu",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
        ),
      ],
    );
}
