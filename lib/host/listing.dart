import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/host/host_listing_filter.dart';
import 'package:bongalo/host/overview.dart';
import 'package:bongalo/module/color.dart';

import 'package:bongalo/widgets/host_bottom.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/trips.dart';

import 'package:flutter/material.dart';

class Host_Listing extends StatelessWidget {
  static const routename = "Host_Listing";

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
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.025, right: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Listings",
                  style: TextStyle(
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 16,
                      fontFamily: 'Inter-Regular',
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset('images/search.png'),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Host_Listing_Filter.routename);
                          },
                          child: Image.asset('images/filter.png'))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Column(
            children: List.generate(
                4,
                (index) => InkWell(
                      onTap: () {
                        print("gaa");
                        Navigator.of(context)
                            .pushNamed(Overview_Screen.routename);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.only(
                            left: width * 0.025,
                            right: width * 0.025,
                            top: height * .05),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.17,
                                width: width * 1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://tse1.mm.bing.net/th?id=OIP.xfxxeN5ErdCifxW8r25NcgHaE-&pid=Api&P=0&w=277&h=186"))),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: width * 0.035, right: width * 0.035),
                                height: height * 0.055,
                                width: width * 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "05-04-2018",
                                          style: getLightBlackstyle(
                                              12, FontWeight.w400),
                                        ),
                                        Text(
                                          "Entire home",
                                          style: getLightBlackstyle(
                                              12, FontWeight.w400),
                                        ),
                                        Text(
                                          "In progress",
                                          style: getLightBlackstyle(
                                              12, FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
          )
        ],
      ),
      bottomNavigationBar: Host_Bottom_Navigation_Bar(),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
      ),

      // bottomNavigationBar: My_Bottom_Navigation_Bar(),
    );
  }
}
