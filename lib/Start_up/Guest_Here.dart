import 'dart:ui';
import 'package:bongalo/Start_up/location.dart';
import 'package:bongalo/Start_up/no_of_guests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Guest_Here extends StatefulWidget {
  static const routename="Guest_Here";

  @override
  _Guest_HereState createState() => _Guest_HereState();
}

class _Guest_HereState extends State<Guest_Here> {
  bool create_newlist = false;
  bool duplicate = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
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
                      "What will Guests have?",
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
            onTap: () {
              setState(() {
                create_newlist = !create_newlist;
              });
            },
            child: Container(
                height: height * 0.15,
                width: width * 1,
                decoration: BoxDecoration(
                    color: create_newlist ? Color(0xfff4f8ff) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: create_newlist ? Colors.blue : Colors.grey,
                        width: create_newlist?1.5:0.35

                    )),
                padding: EdgeInsets.only(left: width * 0.025,top: height*0.02,),
                margin:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Full Place",
                      style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff404040),fontSize: 16,fontFamily: 'Inter-Regular'),

                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Guests have the whole place to themselves. This usually includes a bedroom, a bathroom, and a kitchen",
                      style:
                      TextStyle(fontWeight: FontWeight.w400,
                          color: Color(0xff6B6B75),fontSize: 12,
                          fontFamily: 'Inter-Regular'),
                    )

                      ],
                )),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          InkWell(
            onTap: () {
              setState(() {
                duplicate = !duplicate;
              });

            },
            child: Container(
                height: height * 0.15,
                width: width * 1,
                decoration: BoxDecoration(
                    color: duplicate ? Color(0xfff4f8ff) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: duplicate ? Colors.blue : Colors.grey,
                        width: duplicate?1.5:0.35)),
                padding: EdgeInsets.only(left: width * 0.025,top: height*0.02,),
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Private room",
                      style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff404040),fontSize: 16,fontFamily: 'Inter-Regular'),

                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Guests have their own private room for sleeping. Other areas could be shared.",

                      style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff6B6B75),fontSize: 12,fontFamily: 'Inter-Regular'),

            )
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: (create_newlist == true || duplicate == true)
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
    Navigator.of(context).pushNamed(Location_Screen.routename);
    },
                    child : Container(
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
