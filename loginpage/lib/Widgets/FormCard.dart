import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
         
            Container(
              child: Text("",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            
            ),
            Container(
              width: ScreenUtil.getInstance().setWidth(600),
              height: ScreenUtil.getInstance().setHeight(100),
              color: Colors.white70,
              child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),),

                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),

                  
                  
            ),),
            
            
            Container(
              child: Text("",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            
            ),
            Container(
              width: ScreenUtil.getInstance().setWidth(600),
              height: ScreenUtil.getInstance().setHeight(100),
              
               color: Colors.white70,
               child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),),
                 
                  hintText: "Şifre",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
                  
            ),),
      ],
      
    );
  }
}