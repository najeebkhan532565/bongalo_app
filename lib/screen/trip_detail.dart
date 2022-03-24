import 'package:bongalo/module/color.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:flutter/material.dart';

class Trip_Detail extends StatelessWidget {
static const routename="Trip_Detail";
String title='';
  @override
  Widget build(BuildContext context) {
   var  data= ModalRoute.of(context)!.settings.arguments as String ;
title=data.toString();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(title.toString()),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),
      body: Container(
        margin: EdgeInsets.only(left: width * 0.05),
        child: ListView(
          children: [
            Text(
              "Booking ID: RUBRWA345",
              style:getLightBlackstyle(12, FontWeight.w600),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  margin: EdgeInsets.only(left: width * 0.02),
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.35,
                        height: height * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://tse3.mm.bing.net/th?id=OIP.7B1xLGS4Inj8JFFXBsHWmwHaE9&pid=Api&P=0&w=233&h=156"))),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Private Room in Rubavu in Kigali",
                              style: TextStyle(
                                color: Color.fromRGBO(64, 64, 64, 1),
                                fontSize: 10,
                                fontFamily: 'Inter-Regular',
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text("Anastasia's Paradise",
                              style:getLightBlackstyle(12, FontWeight.w500)),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffF3CE6D),
                                size: 12,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "4.8 (30 Reviews)",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9,
                                    fontFamily: 'Inter-Light'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: height * 0.017,
                                  alignment: Alignment.topLeft,
                                  child: Image.asset('images/Bedroom.png')),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text(
                                "1 rooms",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    fontFamily: 'Inter-Light'),
                              ),
                              SizedBox(
                                width: width * 0.08,
                              ),
                              Container(
                                  height: height * 0.017,
                                  child: Image.asset('images/Bathroom.png')),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text(
                                "2 baths",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    fontFamily: 'Inter-Light'),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Trip info",
              style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 14,
                  fontFamily: 'Inter-SemiBold',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dates",
                      style: TextStyle(
                          color: Color.fromRGBO(64, 64, 64, 1),
                          fontSize: 12,
                          fontFamily: 'Inter-Light',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Wed, Oct 2 - Fri, Oct 26",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 107, 117, 1),
                          fontSize: 10,
                          fontFamily: 'Inter-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: width*0.05),
                  child: Text("Edit",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xff404040),
                    fontFamily: 'Inter-Regular',
                    decoration: TextDecoration.underline
                  ),),
                )
              ],
            ),

            SizedBox(
              height: height * 0.01,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Guests",
                      style: TextStyle(
                          color: Color.fromRGBO(64, 64, 64, 1),
                          fontSize: 12,
                          fontFamily: 'Inter-Light',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "1 guest",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 107, 117, 1),
                          fontSize: 12,
                          fontFamily: 'Inter-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: width*0.05),
                  child: Text("Edit",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xff404040),
                      fontFamily: 'Inter-Regular',
                      decoration: TextDecoration.underline
                  ),),
                )
              ],
            ),


            SizedBox(
              height: height * 0.02
            ),
            Text(
              "Price info",
              style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 14,
                  fontFamily: 'Inter-SemiBold',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$97 x 25 nights",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$ 2230",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service charge",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$ 45",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Color.fromRGBO(64, 64, 64, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Light',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 433",
                    style:getLightBlackstyle(14, FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            title=="Previous"?Text(""):
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black,width: 0.5)
              ),

              child: Center(child: Text("Connect Host",style: TextStyle(color: Colors.black),)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            title=="Previous"?Text(""):
            Center(
              child: Text(
                "Cancel booking",
                style: TextStyle(
                    color: Color.fromRGBO(235, 87, 87, 1),
                    fontSize: 14,
                    fontFamily: 'Inter-Regular',
                    fontWeight: FontWeight.w500),
              ),
            ),

          ],
        ),
      ),

      // bottomNavigationBar: My_Bottom_Navigation_Bar(),
bottomNavigationBar: Bottom_Nav(),
    );
  }
}
