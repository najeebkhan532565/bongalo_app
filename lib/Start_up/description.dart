import 'dart:ui';
import 'package:bongalo/Start_up/calender.dart';
import 'package:bongalo/Start_up/price_set.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  static const routename="Description";

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool select_item = false;

  TextEditingController _name=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _name.dispose();
  }
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
                      "Successful hosting starts with an accurate calendar",
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
        Container(
          margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
          child: Text("Guests will book available days instantly. Only get booked when you can host by keeping your calendar and availability settings up-to-date.Canceling disrupts guests’ plans. If you cancel because your calendar is inaccurate, you’ll be charged a penalty fee and the dates won’t be available for anyone else to book.",style: TextStyle(
            color: Color(0xff9099A6)
          ),),
        ),

          Container(
            margin: EdgeInsets.only(left: width*0.01,right: width*0.05),
            child:Row(
              children: [
                Checkbox(value: select_item, onChanged: (val){
                  setState(() {
                    select_item=val!;
                  });
                }),
SizedBox(width: width*0.01,),
                Text("Got it, i’ll keep my calender up to date",style: TextStyle(
                    color: Color(0xff9099A6)
                ),),

              ],
            ),
          ),



        ],
      ),
      bottomNavigationBar: (select_item==true)
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
                Navigator.of(context).pushNamed(Calender_Screen.routename);
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
