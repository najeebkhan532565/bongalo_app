import 'dart:ui';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update_Password extends StatefulWidget {
  static const routename="Update_Password";


  @override
  _Update_PasswordState createState() => _Update_PasswordState();
}

class _Update_PasswordState extends State<Update_Password> {
  bool select_item=false;
  bool passport=false;
  bool license=false;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(

        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Color(0xfff5f5f5),
        title:  Text("Update password",style: getLightBlackstyle(16, FontWeight.w600),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.02,),

          //current
          Container(
            margin:
            EdgeInsets.only(left: width * 0.05, right: width * 0.05),

            child: Text("Current Password",style: get_default_text_in_field(14, FontWeight.w400)
              ,),
          ),

          SizedBox(height: height*0.02,),
          Container(
              height: height * 0.064,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 1.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Current Password"
                ,
                  border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.025,),

          Container(

              margin:      EdgeInsets.only(left: width * 0.05, right: width * 0.08),

              alignment: Alignment.topRight,
              child: Text("Forget Password?",style: getbluestyle(14, FontWeight.w400))),
          SizedBox(height: height*0.025,),
          //new
          Container(
            margin:
            EdgeInsets.only(left: width * 0.05, right: width * 0.05),

            child: Text("New Password",style: get_default_text_in_field(14, FontWeight.w400)
              ,),
          ),
          SizedBox(height: height*0.02,),
          Container(
              height: height * 0.064,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 1.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter New Password"
                    ,
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.05,),


          Container(
            margin:
            EdgeInsets.only(left: width * 0.05, right: width * 0.05),

            child: Text("Confirm Password",style: get_default_text_in_field(14, FontWeight.w400)
              ,),
          ),
          SizedBox(height: height*0.02,),
          Container(
              height: height * 0.064,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 1.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Confirm Password"
                    ,
                    border: InputBorder.none
                ),
              )),

          SizedBox(height: height*0.05,),



          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Update password",style: getwhitestyle(14, FontWeight.w500)),
            ),
          )



)
        ],
      ),

    );
  }
}
