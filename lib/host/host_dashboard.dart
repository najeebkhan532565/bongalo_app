import 'dart:ui';
import 'package:bongalo/Start_up/rules.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/widgets/host_bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Host_Dashboard extends StatefulWidget {
  static const routename="Host_Dashboard";

  @override
  _Host_DashboardState createState() => _Host_DashboardState();
}

class _Host_DashboardState extends State<Host_Dashboard> with SingleTickerProviderStateMixin {
  bool create_newlist = false;
  bool duplicate = false;

  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
host_index=0;
    _controller = TabController(length: 3, vsync: this);
  }

  List<Map> amminities=[
    {
      'name':'Kitchen',
      'icon':'images/kitchen.png'
    },
    {
      'name':'Air Conditioner',
      'icon':'images/conditioner.png'
    },  {
      'name':'Gym equipment',
      'icon':'images/gym.png'
    },  {
      'name':'Hair Dryer',
      'icon':'images/hair-dryer.png'
    },  {
      'name':'Heater',
      'icon':'images/heater.png'
    },  {
      'name':'Parking',
      'icon':'images/parking.png'
    },  {
      'name':'Swimming pool',
      'icon':'images/swim.png'
    },  {
      'name':'Hot Tub',
      'icon':'images/tub.png'
    },  {
      'name':'Wifi',
      'icon':'images/wifi.png'
    },  {
      'name':'Washing machine',
      'icon':'images/washing-machine.png'
    },
  ];
  bool select_item=false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF4F8FF),
      body: SingleChildScrollView(
        child: Container(
          height: height*1,
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
                          Text(
                            "Today",
                            style:getwhitestyle(20, FontWeight.w700),
                          ),
                          Image.asset('images/notification.png',color: Colors.white,)

                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05),
                      height: height*0.075,
                      width: width*0.4,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                            "Complete Listing",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),


              Container(

                height: height*0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.only(left: width*0.05,bottom: height*0.02),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(10),

                      ),
                      child: Container(

                        width: width*0.35,
                        height: height*0.15,
                        padding: EdgeInsets.only(left: width*0.025),
                        // decoration: BoxDecoration(
                        //     color: select_item ? Color(0xfff4f8ff):Colors.white,
                        //     border: Border.all(color: Color(0xffEEEEEE),width: 1.8),
                        //     borderRadius: BorderRadius.circular(10)
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("AVERAGE MONTHLY TURNOVER",style: getsecondry(9, FontWeight.w600),)

                            ,SizedBox(height: height*0.02,),
                            Text("\$0",style:
                            getLightBlackstyle(24, FontWeight.w600)),

                          ],
                        ),

                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.only(left: width*0.05,bottom: height*0.02),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(10),

                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: width*0.05),
                        width: width*0.35,
                        height: height*0.15,
                        padding: EdgeInsets.only(left: width*0.025),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Total guest",style: getsecondry(9, FontWeight.w600),)

                            ,SizedBox(height: height*0.02,),
                            Text("0",style:
                            getLightBlackstyle(24, FontWeight.w600)),

                          ],
                        ),

                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.only(left: width*0.05,bottom: height*0.02),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(10),

                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: width*0.05),
                        width: width*0.35,
                        height: height*0.15,
                        padding: EdgeInsets.only(left: width*0.025),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Total Listing",style: getsecondry(9, FontWeight.w600),)

                            ,SizedBox(height: height*0.02,),
                            Text("0",style:
                            getLightBlackstyle(24, FontWeight.w600)),

                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              Container(
                  margin: EdgeInsets.only(left: width*0.05),
                  child: Text("RESERVATIONS",style: getLightBlackstyle(10, FontWeight.w600),)),


              SizedBox(
                height: height * 0.02,
              ),

              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                height: height*0.08,
                width: width*1,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffCCCCCC),width: 0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Container(

                  height: height*0.05,
                  width: width*0.85,
                  child: TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Color(0xffCCCCCC),
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: getbluestyle(10, FontWeight.w600),
                    isScrollable: true,
                    indicatorPadding: EdgeInsets.only(top: 5),
                    indicatorWeight: height*0.004,
                    unselectedLabelStyle: getbluestyle(10, FontWeight.w600),
                    controller: _controller,
                    tabs: [
                      Tab(
                        child: // Adobe XD layer: 'Emergency (6)' (text)
                        Text(
                          'COMPLETED',
                          textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Tab(
                        child: // Adobe XD layer: 'Second Opinion' (text)
                        Text(
                          'UPCOMING',
                          textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Tab(
                        child: // Adobe XD layer: 'Second Opinion' (text)
                        Text(
                          'CANCELLED',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(

                child: TabBarView(
                  controller: _controller,
                  children: [
                    Container(
                      child: Column(

                        children: [
                        SizedBox(height: height*0.05,),
                          SvgPicture.asset('images/personal.svg',height: height*0.05,color: Colors.black),
                          SizedBox(height: height*0.01,),
                          Text("No guests available",style: getLightBlackstyle(16, FontWeight.w600),),
                          SizedBox(height: height*0.01,),
                          Container(
                              width: width*0.45,
                              child: Text("You don’t have any guests staying in your place right now",style: getsecondry(12, FontWeight.w400),textAlign: TextAlign.center,))

                        ],
                      ),
                    ),
                    Container(
                      child: Column(

                        children: [
                          SizedBox(height: height*0.05,),
                          SvgPicture.asset('images/personal.svg',height: height*0.05,color: Colors.black),
                          SizedBox(height: height*0.01,),
                          Text("No guests available",style: getLightBlackstyle(16, FontWeight.w600),),
                          SizedBox(height: height*0.01,),
                          Container(
                              width: width*0.45,
                              child: Text("You don’t have any guests staying in your place right now",style: getsecondry(12, FontWeight.w400),textAlign: TextAlign.center,))

                        ],
                      ),
                    ),
                    Container(
                      child: Column(

                        children: [
                          SizedBox(height: height*0.05,),
                          SvgPicture.asset('images/personal.svg',height: height*0.05,color: Colors.black),
                          SizedBox(height: height*0.01,),
                          Text("No guests available",style: getLightBlackstyle(16, FontWeight.w600),),
                          SizedBox(height: height*0.01,),
                          Container(
                              width: width*0.45,
                              child: Text("You don’t have any guests staying in your place right now",style: getsecondry(12, FontWeight.w400),textAlign: TextAlign.center,))

                        ],
                      ),
                    )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: Host_Bottom_Navigation_Bar()
    );
  }
}
