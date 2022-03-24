import 'dart:ui';
import 'package:bongalo/Start_up/amminities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Number_of_Guests extends StatefulWidget {
  static const routename="Number_of_Guests";
  @override
  _Number_of_GuestsState createState() => _Number_of_GuestsState();
}

class _Number_of_GuestsState extends State<Number_of_Guests> {
  bool create_newlist = false;
  bool duplicate = false;
int guest=0;
int bed=0;
int bedrooms=0;
int bathrooms=0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height*1.2,
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
                          "How many guests can your place accomodate?",
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
              ListTile(
                leading: Text(
                  "Guests",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87.withOpacity(0.8)),
                ),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      InkWell(
                        onTap: (){
                          if(guest>0){
                            setState(() {
                              guest--;
                            });
                          }

                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:guest>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: guest>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(guest.toString()),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            guest++;
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "Bed",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87.withOpacity(0.8)),
                ),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      InkWell(
                        onTap: (){
                          if(bed>0){
                            setState(() {
                              bed--;
                            });
                          }

                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:bed>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: bed>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(bed.toString()),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            bed++;
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "Bedrooms",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87.withOpacity(0.8)),
                ),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      InkWell(
                        onTap: (){
                          if(bedrooms>0){
                            setState(() {

                              bedrooms--;
                            });
                          }

                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:bedrooms>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: bedrooms>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(bedrooms.toString()),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(bedrooms>0){
                              bedrooms++;
                            }

                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "Bathrooms",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87.withOpacity(0.8)),
                ),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [


                      InkWell(
                        onTap: (){
                          setState(() {
                            if(bathrooms>0){
                              bathrooms--;
                            }

                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:bathrooms>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: bathrooms>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(bathrooms.toString()),

                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            bathrooms++;
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: (guest>0  || bed>0  || bathrooms>0 || bedrooms>0)
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
                      Navigator.of(context).pushNamed(Ammenities.routename);
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
