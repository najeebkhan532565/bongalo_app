import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/add_profile_pic.dart';
import 'package:bongalo/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Success extends StatelessWidget {
  static const routename="Success";

  @override
  Widget build(BuildContext context) {

      final height=MediaQuery.of(context).size.height;
      final width=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),

      body: Column(

        children: [
          SizedBox(height: height*0.24,),

          SizedBox(height: height*0.05,),
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("That was successful",

                style: TextStyle(color: Color(0xff404040),fontFamily: 'Inter-Regular',fontSize: 16,fontWeight: FontWeight.w600),)),




          SizedBox(height: height*0.02,),
          Container(
            width: width*0.6,
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('You now have an acoount with us enjoy seemless booking with mobile payment',
                style: TextStyle(color: Color(0xff6B6B75),fontFamily: 'Inter-Regular',fontSize: 12,fontWeight: FontWeight.w400),

              textAlign: TextAlign.center,
              )),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Add_Profile_Pic.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Continue",style: getwhitestyle(14, FontWeight.w700),))),
          ),
        ],
      ),
    );
  }
}
