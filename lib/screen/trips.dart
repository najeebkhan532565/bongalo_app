import 'dart:convert';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/screen/trip_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Trips extends StatefulWidget {
  static const routename = "Trips";
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> with SingleTickerProviderStateMixin {
  @override
  Color active = Colors.green;
  Color inactive = Color(0xffF9F9F9);
  bool isrecieved = true;
  @override
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
current_index=2;
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    _controller.dispose();
  }

  double rating = 1;
  bool isloading = false;

  int count=1;

  double final_total = 0;
  String? _order_doc_id;
  String? category_id;

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text("Trips"),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actions: [],
          toolbarHeight: MediaQuery.of(context).size.height * 0.07,
          bottom: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Color.fromRGBO(204, 204, 204, 1),
            labelColor: Color.fromRGBO(64, 64, 64, 1),
            labelStyle: getLightBlackstyle(16, FontWeight.w600),
            unselectedLabelStyle: TextStyle(color: Colors.blue),
            controller: _controller,
            tabs: [
              Tab(
                child: // Adobe XD layer: 'Emergency (6)' (text)
                    FittedBox(
                  child: Text(
                    'Upcoming',
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Tab(
                child: // Adobe XD layer: 'Second Opinion' (text)
                    FittedBox(
                  child: Text(
                    'Previous',
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(Trip_Detail.routename,arguments: 'Upcoming');
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: width*0.02),
                    child: Row(
                      children: [

                        Container(
                          width: width * 0.32,
                          height: height * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.7B1xLGS4Inj8JFFXBsHWmwHaE9&pid=Api&P=0&w=233&h=156"))),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Nirvana Heights Resort",
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontSize: 14,
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text("Booking ID: RUBRWA345",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontSize: 12,
                                    fontFamily: 'Inter-Regular',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text("June 12 -22",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontSize: 12,
                                    fontFamily: 'Inter-Regular',
                                    fontWeight: FontWeight.w400)),

                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
            count==0?
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("You have no  previous bookings yet. To reserve one, finish a booking process and you are good to go!",
                        style: TextStyle(
                          color: Color.fromRGBO(64, 64, 64, 1),
                          fontSize: 14,
                          fontFamily: 'Inter-Regular',
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                  ),

                  SizedBox(
                    height: height * 0.02,
                  ),


                  InkWell(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      height: height*0.065,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3C85FF),
                      ),

                      child: Center(child: Text("Explore Bongalo",style: TextStyle(color: Colors.white),)),
                    ),
                  ),

                ],
              ),
            ):
            Column(
              children: List.generate(5, (index) =>
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Trip_Detail.routename,arguments: 'Previous');
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.02),
                      child: Row(
                children: [

                      Container(
                        margin: EdgeInsets.only(left: width*0.02),
                        width: width * 0.32,
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://tse3.mm.bing.net/th?id=OIP.7B1xLGS4Inj8JFFXBsHWmwHaE9&pid=Api&P=0&w=233&h=156"))),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Nirvana Heights Resort",
                              style: TextStyle(
                                color: Color.fromRGBO(64, 64, 64, 1),
                                fontSize: 14,
                                fontFamily: 'Inter-Regular',
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text("Booking ID: RUBRWA345",
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 107, 117, 1),
                                  fontSize: 12,
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text("June 12 -22",
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 107, 117, 1),
                                  fontSize: 12,
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w400)),

                        ],
                      )
                ],
              ),
                    ),
                  )),
            )

          ],
        ),
      // bottomNavigationBar: My_Bottom_Navigation_Bar(),

     bottomNavigationBar: Bottom_Nav(),
      ),
    ));
  }
}
