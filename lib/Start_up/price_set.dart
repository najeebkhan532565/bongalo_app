import 'dart:ui';
import 'package:bongalo/Start_up/payout.dart';
import 'package:bongalo/profile/payment_payout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Price_Set extends StatefulWidget {
  static const routename="Price_Set";

  @override
  _Price_SetState createState() => _Price_SetState();
}

class _Price_SetState extends State<Price_Set> {
  bool select_item = false;

  TextEditingController _name=TextEditingController();
  TextEditingController weekly=TextEditingController();
  TextEditingController montly=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _name.dispose();
    weekly.dispose();
    montly.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height*1.1,
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
                          "Set a price for your place",
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


                child: Text("Get more bookings by giving a competitive price for your listing. Prices are automatically in Dollar(\$) value.",style: TextStyle(
                    color: Color(0xff9099A6)
                ),),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(
                    controller: _name,
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Set your price"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),

              SizedBox(
                height: height * 0.02,
              ),



              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),

                child:Text("When guests book for more days, they'll like a discount. This helps you keep the same guest(s) for longer period.To increase your chances of getting longer stays, you may include a weekly or monthly discount as a percentage of your initial price.",style: TextStyle(
                    color: Colors.blue
                ),),
              ),

              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(
                    controller: weekly,
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Set Weekly discount"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),

              SizedBox(
                height: height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),


                child:Text("Weekly Discount (%). Applied when guest books from 7 nights.",style: TextStyle(
                    color: Color(0xff9099A6)
                ),),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(
                    controller: montly,
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Set monthly discount"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),

              SizedBox(
                height: height * 0.02,
              ),


              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                child:Text("Monthly Discount (%). Applied when guests books from 28 nights.",style: TextStyle(
                    color: Color(0xff9099A6)
                ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: (_name.text.length>0 && weekly.text.length>0 && montly.text.length>0)
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
                Navigator.of(context).pushNamed(Host_Payout_Method.routename);
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
