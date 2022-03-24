import 'dart:ui';
import 'package:bongalo/Start_up/description.dart';
import 'package:bongalo/Start_up/no_of_guests.dart';
import 'package:bongalo/module/search.dart';
import 'package:bongalo/module/serach_location.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location_Screen extends StatefulWidget {
  static const routename = "Location_Screen";

  @override
  _Location_ScreenState createState() => _Location_ScreenState();
}

class _Location_ScreenState extends State<Location_Screen> {
  bool create_newlist = false;
  bool duplicate = false;
  TextEditingController _name = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _name.dispose();
  }

  String address = '';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    try {
      address = ModalRoute.of(context)!.settings.arguments as String;
    } catch (error) {

    print(error.toString());

    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height * 1,
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
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
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
                          "Where is your property located?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Container(
                height: height * 0.6,
                width: width * 1,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/Mapsicle Map.png"))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      width: width * 0.85,
                      height: height * 0.06,
                      margin: EdgeInsets.only(top: height * 0.05),
                      child: TextFormField(
                        initialValue: address,
                        onChanged: (val){
                          setState(() {
                            val=address;
                          });
                        },
                        onTap: () {
                          showSearch(
                              context: context, delegate: Search_Location());
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your address?",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: (address.isNotEmpty)
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
                    onTap: () {
                      Navigator.of(context).pushNamed(Number_of_Guests.routename);
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.2,
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
