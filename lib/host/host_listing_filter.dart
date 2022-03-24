import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/reservation_detail.dart';
import 'package:flutter/material.dart';

class Host_Listing_Filter extends StatefulWidget {

  static const routename="Host_Listing_Filter";

  @override
  State<Host_Listing_Filter> createState() => _Host_Listing_FilterState();
}

class _Host_Listing_FilterState extends State<Host_Listing_Filter> {
  bool Arriving = false;

  bool Pending = false;



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
        leading: IconButton(icon: Icon(Icons.close_outlined,color: Colors.black),onPressed: (){}),
        title: Text("Filter Listing",style: getLightBlackstyle(16, FontWeight.w600),),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Text("Published ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Arriving, onChanged: (val) {
              setState(() {
                Arriving=val!;
              });

            }),
          ),
          ListTile(
            leading: Text("In progress  ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Pending, onChanged: (val) {
              setState(() {
                Pending=val!;
              });
            }),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: height * 0.08,
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
                child: Text("Clear all")),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child : Container(
                  height: height * 0.06,
                  width: width * 0.28,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                        "Apply",
                        style: getwhitestyle(14, FontWeight.w500)),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}