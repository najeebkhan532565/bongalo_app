import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/card_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Overview_Screen extends StatefulWidget {
  static const routename = "Overview_Screen";

  @override
  State<Overview_Screen> createState() => _Overview_ScreenState();
}

class _Overview_ScreenState extends State<Overview_Screen>
    with SingleTickerProviderStateMixin {
  bool status = false;
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _controller = TabController(length: 3, vsync: this);
  }
  String? select_method;
  String? city='';
  String loca='';

  List<String> payout_method = ["Jan", "Mar","May"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        foregroundColor: Colors.black,
        centerTitle: true,
        leadingWidth: width * 0.2,
        title: Text("Overview"),

        elevation: 0,

      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Row(
                children: [
                  Text(
                    "Overview",
                    style: getsecondry(14, FontWeight.w400),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, size: 15),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    "Reviews",
                    style: getsecondry(14, FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              // margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              // height: height * 0.08,
              // width: width * 0.9,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(10),
              // ),
              margin:  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              height: height * 0.08,
              width: width * 0.9,

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffCCCCCC),width: 0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Container(

                child: TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Color(0xffCCCCCC),
                  indicatorColor: Colors.blue,
                  labelStyle: getbluestyle(13, FontWeight.w500),
                  isScrollable: true,
                  unselectedLabelStyle: getbluestyle(13, FontWeight.w500),
                  controller: _controller,
                  tabs: [
                    Tab(
                      child: // Adobe XD layer: 'Emergency (6)' (text)
                          Text(
                        'ReVIEWS',
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Tab(
                      child: // Adobe XD layer: 'Second Opinion' (text)
                          Text(
                        'EARNINGS',
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Tab(
                      child: // Adobe XD layer: 'Second Opinion' (text)
                          Text(
                        'Views',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            Container(
              height: height * 1,
              width: double.maxFinite,
              child: TabBarView(
                controller: _controller,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(

                          // margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                          decoration: BoxDecoration(
                              color: Color(0xffEEEEEE),
                              border: Border.all(color: Color(0xffEEEEEE),width: 2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Center(
                                    child: Text(
                                      "All",
                                      style: getbluestyle(14, FontWeight.w400),
                                    )),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "5",
                                      style: getbluestyle(14, FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Icon(Icons.star, color: Color(0xffF3CE6D), size: 14),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4",
                                      style: getbluestyle(14, FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Icon(Icons.star, color: Color(0xffF3CE6D), size: 14),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "3",
                                      style: getbluestyle(14, FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Icon(Icons.star, color: Color(0xffF3CE6D), size: 14),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "2",
                                      style: getbluestyle(14, FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Icon(Icons.star, color: Color(0xffF3CE6D), size: 14),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1",
                                      style: getbluestyle(14, FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Icon(Icons.star, color: Color(0xffF3CE6D), size: 14),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.8 ",
                                    style: getLightBlackstyle(20, FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Icon(Icons.star, color: Color(0xffF3CE6D)),
                                ],
                              ),
                              Text(
                                "Overall rating",
                                style: getsecondry(14, FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "156 ",
                                style: getLightBlackstyle(20, FontWeight.w700),
                              ),
                              Text(
                                "Overall rating",
                                style: getsecondry(14, FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.3,
                            height: height * 0.11,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://tse3.mm.bing.net/th?id=OIP.7B1xLGS4Inj8JFFXBsHWmwHaE9&pid=Api&P=0&w=233&h=156"))),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nirvana Heights Resort",
                                  style: TextStyle(
                                    color: Color.fromRGBO(64, 64, 64, 1),
                                    fontSize: 16,
                                    fontFamily: 'Inter-Regular',
                                    fontWeight: FontWeight.w600,
                                  )),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text("32 reviews",
                                  style: getsecondry(18, FontWeight.w600)),

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://tse2.mm.bing.net/th?id=OIP.SYIBNg9Pmpcp8ebumL-aagHaFj&pid=Api&P=0&w=243&h=182"),
                      ),
                      title: Text(
                        "Marvin McKinney",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(64, 64, 64, 1),
                            fontSize: 15,
                            fontFamily: 'Inter-Bold'),
                      ),
                      subtitle: Text(
                        "October 2021",
                        style: TextStyle(
                            color: Color.fromRGBO(107, 107, 117, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Inter-Light'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: Text(
                        "The property was generally quite beautiful. The first question was the furnishings of the patio. A few of the seats that seemed to have gone so that they could not utilize. WOuld been wonderful to have a modest table sitting on the terrace to enjoy our coffee/wine. If not, lovely apartment. Thanks!",
                        style: getsecondry(14, FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://tse2.mm.bing.net/th?id=OIP.SYIBNg9Pmpcp8ebumL-aagHaFj&pid=Api&P=0&w=243&h=182"),
                      ),
                      title: Text(
                        "Savannah Nguyen",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(64, 64, 64, 1),
                            fontSize: 15,
                            fontFamily: 'Inter-Bold'),
                      ),
                      subtitle: Text(
                        "October 2021",
                        style: TextStyle(
                            color: Color.fromRGBO(107, 107, 117, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Inter-Light'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: Text(
                        "The property was generally quite beautiful. The first question was the furnishings of the patio. A few of the seats that seemed to have gone so that they could not utilize. WOuld been wonderful to have a modest table sitting on the terrace to enjoy our coffee/wine. If not, lovely apartment. Thanks!",
                        style: getsecondry(14, FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue)),
                          child: Center(
                              child: Text(
                                "See More",
                                style: getbluestyle(14, FontWeight.w500),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff9099A6), width: 0.5)),
                        padding: EdgeInsets.only(left: width * 0.025),
                        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                        child: DropdownButton(
                          hint: Text(
                            "Select Month",
                            style: get_default_text_in_field(13.68, FontWeight.w400),
                          ),
                          alignment: Alignment.centerLeft,
                          value: select_method,
                          style: getLightBlackstyle(14, FontWeight.w400),
                          onChanged: (value) {
                            setState(() {
                              select_method = value.toString();
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.expand_less),
                          ),
                          menuMaxHeight: MediaQuery.of(context).size.height * 0.5,
                          isExpanded: true,
                          underline: Container(color: Colors.transparent),
                          items: payout_method
                              .map((e) =>
                              DropdownMenuItem(value: e, child: Text(e.toString())))
                              .toList(),
                        ),
                      ),

                      SizedBox(height: height*0.04,),
                      Container(
                        margin: EdgeInsets.only(left: width*0.05),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600),),

                            SizedBox(height: height*0.015,),

              Text("Earnings for 2021 bookings",style: getsecondry(12, FontWeight.w400),),

                          ],

                        ),
                      ),

                      SizedBox(height: height*0.02,),

                      Container(
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        width: width*1,
                        height: height*0.0012,
                        color: Color(0xffC4C4C4),
                      ),
                      SizedBox(height: height*0.02,),
Container(
  margin: EdgeInsets.only(left: width*0.05),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.start,

    children: [

      Column(

        crossAxisAlignment: CrossAxisAlignment.start,

       children: [

         Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600)),

         SizedBox(height: height*0.015,),

           Text("Paid out",style: getsecondry(12, FontWeight.w400),)

       ],

      ),



      SizedBox(width: width*0.02,),



      Container(

        margin: EdgeInsets.only(left: width*0.05),

        child: Column(

          children: [

            Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600)),

            SizedBox(height: height*0.015,),

            Text("Expected",style: getsecondry(12, FontWeight.w400),)

          ],

        ),

      ),



    ],

  ),
),


                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff9099A6), width: 0.5)),
                        padding: EdgeInsets.only(left: width * 0.025),
                        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                        child: DropdownButton(
                          hint: Text(
                            "Select Month",
                            style: get_default_text_in_field(13.68, FontWeight.w400),
                          ),
                          alignment: Alignment.centerLeft,
                          value: select_method,
                          style: getLightBlackstyle(14, FontWeight.w400),
                          onChanged: (value) {
                            setState(() {
                              select_method = value.toString();
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.expand_less),
                          ),
                          menuMaxHeight: MediaQuery.of(context).size.height * 0.5,
                          isExpanded: true,
                          underline: Container(color: Colors.transparent),
                          items: payout_method
                              .map((e) =>
                              DropdownMenuItem(value: e, child: Text(e.toString())))
                              .toList(),
                        ),
                      ),

                      SizedBox(height: height*0.04,),
                      Container(
                        margin: EdgeInsets.only(left: width*0.05),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600),),

                            SizedBox(height: height*0.015,),

                            Text("Earnings for 2021 bookings",style: getsecondry(12, FontWeight.w400),),

                          ],

                        ),
                      ),

                      SizedBox(height: height*0.02,),

                      Container(
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        width: width*1,
                        height: height*0.0012,
                        color: Color(0xffC4C4C4),
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                        margin: EdgeInsets.only(left: width*0.05),
                        child:   Row(

                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [

                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600)),

                                SizedBox(height: height*0.015,),

                                Text("Paid out",style: getsecondry(12, FontWeight.w400),)

                              ],

                            ),



                            SizedBox(width: width*0.02,),



                            Container(

                              margin: EdgeInsets.only(left: width*0.05),

                              child: Column(

                                children: [

                                  Text("\$9,675.99",style: getBlackStyle(16, FontWeight.w600)),

                                  SizedBox(height: height*0.015,),

                                  Text("Expected",style: getsecondry(12, FontWeight.w400),)

                                ],

                              ),

                            ),



                          ],

                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
