import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/payment_success.dart';
import 'package:bongalo/screen/success.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Reservartion_Detail extends StatefulWidget {
  static const routename = "Reservartion_Detail";

  @override
  State<Reservartion_Detail> createState() => _Reservartion_DetailState();
}

class _Reservartion_DetailState extends State<Reservartion_Detail> {
  String? title;
  String? country;

  List countries = ["PAK", "IND", "WEST"];
  List mylist = ["Mobile Money"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Charming and comfortable house",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(64, 64, 64, 1),
              fontSize: 16,
              fontFamily: 'Inter-Regular'),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),
      body: Container(
        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        child: ListView(
          children: [
            Text("TRIP INFORMATION",style: getLightBlackstyle(10, FontWeight.w600),),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.025),
              decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffCCCCCC),width: 0.3)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
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
                                          "https://tse1.mm.bing.net/th?id=OIP.sbJDInNT9pHtRQOEbpF2cwHaE8&pid=Api&P=0&w=234&h=156"))),
                            ),
                            SizedBox(
                              width: width * 0.035,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Private Room in Rubavu in Kigali",
                                    style: getsecondry(10, FontWeight.w400)),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text("Anastasia's Paradise",
                                    style: getLightBlackstyle(12, FontWeight.w400)),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: width * 0.05),
                      child: Text(
                        "Paid",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter-Regular',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "Dates",
                    style: getLightBlackstyle(10, FontWeight.w600),
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
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Guests",
                    style: getLightBlackstyle(10, FontWeight.w600),
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
                  SizedBox(height: height * 0.02),
                  Text(
                    "Price info",
                    style: getLightBlackstyle(10, FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: width * 0.05),
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
                    margin: EdgeInsets.only(right: width * 0.05),
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
                    margin: EdgeInsets.only(right: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: getLightBlackstyle(14, FontWeight.w700),
                        ),
                        Text(
                          "\$ 433",
                          style: getLightBlackstyle(14, FontWeight.w700),
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

            SizedBox(
              height: height * 0.02,
            ),
            Text("GUEST INFORMATION",style: getLightBlackstyle(10, FontWeight.w600),),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.45,
              width: width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffCCCCCC),width: 0.3)

              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.GNNGsGugI6OVyorHEwvE-QHaEK&pid=Api&P=0&w=281&h=158"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "Annie Anderson",
                          style: getLightBlackstyle(16, FontWeight.w600),
                        )),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Row(
                        children: [
                          Image.asset('images/Frame.png'),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Kigali, Rwanda",
                            style: getLightBlackstyle(14, FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("annieand.@mail.com",
                                style: getLightBlackstyle(12, FontWeight.w400))
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Phone",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("+237713097310",
                                style: getLightBlackstyle(12, FontWeight.w400))
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gender",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("Male",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date of Birth",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("06/08/1997",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Age",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("24",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Joined",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                            Text("October, 2020",
                                style: getLightBlackstyle(12, FontWeight.w400)),
                          ]),
                    ),
                  ]),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
              onTap: () async{
                final no="+237713097310";
              launch('tel://$no');

              },
              child: Container(
                height: height * 0.065,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff3C85FF),
                ),
                child: Center(
                    child: Text(
                  "Call Guest",
                  style: getwhitestyle(14, FontWeight.w700),
                )),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
