import 'dart:ui';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upload_Document extends StatefulWidget {
  static const routename="Upload_Document";
  const Upload_Document({Key? key}) : super(key: key);

  @override
  _Upload_DocumentState createState() => _Upload_DocumentState();
}

class _Upload_DocumentState extends State<Upload_Document> {
  bool select_item=false;
  bool passport=false;
  bool license=false;
  String ? _showErrorDialog()
  {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
contentPadding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05,right: MediaQuery.of(context).size.height*0.025,left: MediaQuery.of(context).size.height*0.025),
  actionsPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.025),

          content: Text("Your file has been recieved, sit back while we verify it. This process may take between 3 - 5 days, and we will send you an email once confirmed. Thank you",style: getBlackStyle(14, FontWeight.w400),textAlign: TextAlign.center),
          actions: <Widget>[
            Center(
              child: TextButton(
                child: Text('Ok,got it',style: TextStyle(
                    fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  decoration: TextDecoration.underline
                )),
                onPressed: (){
                  Navigator.of(context).pushNamed(Guest_Profile.routename);
                },
              ),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
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
          Text("Kindly upload your identification document ",style: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(144, 153, 166, 1)
          ),),

          SizedBox(height: height*0.05,),
          Container(
              height: height * 0.18,
              width: width * 1,

              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              child:DottedBorder(
                // borderType: BorderType.,
                strokeCap: StrokeCap.square,
                color: select_item ? Color(0xfff4f8ff) : Color(0xff3C85FF),
                radius: Radius.circular(12),
                strokeWidth: 1,
                dashPattern: [10,10],
                padding: EdgeInsets.only(left: width * 0.025),

                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/cloud_upload.png'),
                      SizedBox(height: height*0.02,),
                      Text("Click to upload document",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15
                      ),)
                    ],
                  ),
                ),
              )

          ),
          SizedBox(height: height*0.05,),
          Container(
              height: height * 0.1,
              width: width * 1,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 166, 86, 0.3),
                  borderRadius: BorderRadius.circular(0),


              ),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              alignment: Alignment.centerLeft,
              child: Text("Please make sure the document is clear. Valid doc types : JPG, JPEG, PDF. Images should not be more than 5MB",style: getstyle(10, FontWeight.w400),)),
          SizedBox(height: height*0.07,),
          InkWell(
            onTap: (){
              // Navigator.of(context).pushNamed(Guest_Profile.routename);
          _showErrorDialog();
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Submit",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),

    );
  }
}
