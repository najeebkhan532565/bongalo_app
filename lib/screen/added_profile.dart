import 'dart:io';

import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/home.dart';
import 'package:bongalo/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Added_Profile extends StatelessWidget {
  static const routename="Added_Profile";
File ? _file;
  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
_file=ModalRoute.of(context)!.settings.arguments as File;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          _file==null?
              Text(""):
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: FileImage(_file!),
            ),
          ),
          SizedBox(height: height*0.01,),
          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Hi, I’m Lukman",style: TextStyle(
                  fontFamily: 'Inter-Regular',
                  fontSize: 16,
                  color: Color(0xff404040),
                  fontWeight: FontWeight.w600,

              ),)),

          SizedBox(height: height*0.01,),

          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Joined in 2021",style: TextStyle(color: Color(0xff6B6B75),fontSize: 14,fontWeight: FontWeight.w400))),
          SizedBox(height: height*0.05,),



          SizedBox(height: height*0.05,),
          Row(
            children: [

              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Explore.routename);
                },
                child: Container(
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  height: height*0.055,
                  width: width*0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3C85FF),
                  ),

                  child: Center(child: Text("Explore",style: getwhitestyle(14, FontWeight.w700))),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Guest_Profile.routename);
                },
                child: Container(
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  height: height*0.055,
                  width: width*0.35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff3C85FF)),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(child: Text("Go to profile",style: getbluestyle(14, FontWeight.w500))),

                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

