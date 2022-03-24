import 'dart:ui';
import 'package:bongalo/Start_up/add_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  static const routename="Rules";

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  bool create_newlist = false;
  bool duplicate = false;
  bool select_item=false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height*1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.35,
                width: width * 1,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  gradient: new LinearGradient(
                    colors: [
                      Color.fromRGBO(191, 100, 255, 1),
                      Color.fromRGBO(600, 100, 252, 1)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.close, color: Colors.white),
                          Text(
                            "Help",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: Text(
                          "Set the rules of your place",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    select_item=!select_item;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: select_item ? Color(0xfff4f8ff):Colors.white,
                    border: Border.all(color: Color(0xffEEEEEE),width: 1.8),
                  ),
                  height: height*0.1,
                  width: width*1,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  padding: EdgeInsets.only(left: width*0.05),
                  child:  Text("No Smoking",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEEEEEE,))
                ),
                height: height*0.1,
                width: width*1,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                padding: EdgeInsets.only(left: width*0.05),
                child:  Text("No pets",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

              ),
              SizedBox(
                height: height * 0.02,
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEEEEEE,))
                ),
                height: height*0.1,
                width: width*1,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                padding: EdgeInsets.only(left: width*0.05),
                child:  Text("No Parties",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

              ),     SizedBox(
                height: height * 0.02,
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEEEEEE,))
                ),
                height: height*0.1,
                width: width*1,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                padding: EdgeInsets.only(left: width*0.05),
                child:  Text("No Kids",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

              ),     SizedBox(
                height: height * 0.02,
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEEEEEE,))
                ),
                height: height*0.1,
                width: width*1,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                padding: EdgeInsets.only(left: width*0.05),
                child:  Text("No loud music",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: (select_item == true)
          ? Container(
        height: height * 0.11,
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
                Navigator.of(context).pushNamed(Add_Image.routename);
              },
              child: Container(
                height: height*0.06,
                width: width*0.2,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
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
