import 'dart:async';
import 'dart:ui';
import 'package:bongalo/Start_up/published.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Publish extends StatefulWidget {
  static const routename="Publish";

  @override
  _PublishState createState() => _PublishState();
}

class _PublishState extends State<Publish> {
  bool select_item = false;
  String ? select_method;

  List<String> Publish=["Paypal","Moneygram"];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
        seconds: 3
    ), ()=>Navigator.of(context).pushNamed(Published.routename));

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
                          "Publishing...",
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
                  Navigator.of(context).pushNamed(Published.routename);
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(
color: Color.fromRGBO(244, 248, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
        margin:
        EdgeInsets.only(left: width * 0.025),

        child: Text("uploading pictures",style: TextStyle(color: Colors.blue),)),
    Container(
        margin:
        EdgeInsets.only(right: width * 0.05),
        child: Text("20%",style: TextStyle(color: Colors.blue),))
  ],
),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: (select_method!=null && select_method!.isNotEmpty)
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
            Container(
              height: height * 0.07,
              width: width * 0.3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                    "Completed",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ],
        ),
      )
          : Text(""),
    );
  }
}
