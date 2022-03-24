import 'dart:ui';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/upload_document.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Info extends StatefulWidget {
static const routename="Edit_Info";


  @override
  _Edit_InfoState createState() => _Edit_InfoState();
}

class _Edit_InfoState extends State<Edit_Info> {
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
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Color(0xfff5f5f5),
title:  Text("Upload document",style: TextStyle(
    fontSize: 18,
    color: Color.fromRGBO(64, 64, 64, 1)
),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
SizedBox(height: height*0.02,),


          SizedBox(height: height*0.02,),
          Text(" Please select your identification document",style: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(144, 153, 166, 1)
          ),),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: () {
              setState(() {
                select_item = !select_item;
              });
            },
            child: Container(
                height: height * 0.1,
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
                child: Text("National ID",style: get5SStyle(15, FontWeight.w500),)),
          ),
          SizedBox(height: height*0.05,),
          InkWell(
            onTap: () {
              setState(() {
                passport = !passport;
              });
            },
            child: Container(
                height: height * 0.1,
                width: width * 1,
                decoration: BoxDecoration(
                    color: passport ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: passport ? Colors.blue : Colors.grey,
                        width: 1.5)),
                padding: EdgeInsets.only(left: width * 0.025),
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                alignment: Alignment.centerLeft,
                child: Text("Internation Passport",style: get5SStyle(15, FontWeight.w500),)),
          ),
          SizedBox(height: height*0.05,),



          InkWell(
            onTap: () {
              setState(() {
                license = !license;
              });
            },
            child: Container(
                height: height * 0.1,
                width: width * 1,
                decoration: BoxDecoration(
                    color: license ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: license ? Colors.blue : Colors.grey,
                        width: 1.5)),
                padding: EdgeInsets.only(left: width * 0.025),
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                alignment: Alignment.centerLeft,
                child: Text("Driving License",style: get5SStyle(15, FontWeight.w500),)),
          ),
        ],
      ),
      bottomNavigationBar: (select_item==true)
          ? Container(
        height: height * 0.15,
        width: width * 1,
        color: Colors.white,
        padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                child: Text("Back")),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Upload_Document.routename);
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
            ),
          ],
        ),
      )
          : Text(""),
    );
  }
}
