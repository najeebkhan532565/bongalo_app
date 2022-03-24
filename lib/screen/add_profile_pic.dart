import 'dart:io';

import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/added_profile.dart';
import 'package:bongalo/screen/login.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Add_Profile_Pic extends StatefulWidget {
  static const routename="Add_Profile_Pic";

  @override
  State<Add_Profile_Pic> createState() => _Add_Profile_PicState();
}

class _Add_Profile_PicState extends State<Add_Profile_Pic> {
  bool select_item = false;

  File? _file;

  Future<void> pickimage() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();

      setState(() {
        _file = files.first;
      });
    } else {
      // User canceled the picker
    }
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Welcome",style: getbluestyle(16, FontWeight.w600),)),
          SizedBox(height: height*0.025,),

          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Lukman",style: getGrayStyle(30, FontWeight.w700),)),
          SizedBox(height: height*0.025,),


          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Add a profile picture",style: getbluestyle(16, FontWeight.w600),)),
          SizedBox(height: height*0.07,),

          Center(child: InkWell(
              onTap: (){
                pickimage();
              },
              child:

              _file==null?
              Image.asset('images/take_pic.png',):
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: FileImage(_file!),
                  )
          )),


          SizedBox(height: height*0.1,),


_file==null?
Container(
  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
  height: height*0.065,
  width: width*0.9,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(60, 133, 255, 0.4),
  ),

  child: Center(child: Text("Continue",style: getwhitestyle(14, FontWeight.w700),)),
):

InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Added_Profile.routename,arguments: _file);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Continue",style: getwhitestyle(14, FontWeight.w700),)),
            ),
          ),
        ],
      ),
    );
  }
}

