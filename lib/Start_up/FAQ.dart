import 'dart:convert';

import 'package:bongalo/module/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FAQ extends StatefulWidget {
  static const routename = "FAQ";
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> with SingleTickerProviderStateMixin {
  @override
  bool isrecieved = true;
  @override
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    _controller.dispose();
  }

  bool isloading = false;

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF4F8FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF4F8FF),
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [],
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              width: width * 0.6,
              child: Text(
                "Frequently Asked Questions",
                style: getLightBlackstyle(24, FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
            child: Text(
              "Receive prompt answers to all your Bongalo inquiries and concerns. We have answers ready for you, whether as a guest, host or just a member.",
              style: get_default_text_in_field(14, FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            child: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Color(0xffCCCCCC),
              indicatorColor: Colors.transparent,
              labelStyle: getbluestyle(13, FontWeight.w500),
              isScrollable: true,
              unselectedLabelStyle: getbluestyle(13, FontWeight.w500),
              controller: _controller,
              tabs: [
                Tab(
                  child: // Adobe XD layer: 'Emergency (6)' (text)
                      FittedBox(
                    child: Text(
                      'GENERAL',
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Tab(
                  child: // Adobe XD layer: 'Second Opinion' (text)
                      Text(
                    'BONGALO MEMBERS',
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Tab(
                  child: // Adobe XD layer: 'Second Opinion' (text)
                      Text(
                    'BONGALO PROPERTY OWNERS',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 1,
            width: double.maxFinite,
            child: TabBarView(
              controller: _controller,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "What are the benefits of using Bongalo?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                              Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text("How can i reset my password",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                              Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo verify all the properties listed?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                              Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo verify all the properties listed?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                              Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo verify all the properties listed?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                              Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "What are the benefits of using Bongalo?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text("How can i reset my password",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo verify all the properties listed?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "What are the benefits of using Bongalo?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo verify all the properties listed?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "How does Bongalo work?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text("What are the benefits of listing on Bongalo?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "Does Bongalo own the listed spaces?",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "How do I create an account??",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        width: width * 1,
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: ListTile(
                          tileColor: Colors.white,
                          leading: Text(
                              "How do I create an account??",
                              style: getLightBlackstyle(12, FontWeight.w700)),
                          trailing:
                          Icon(Icons.expand_more, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
