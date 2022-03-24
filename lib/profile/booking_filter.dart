import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/reservation_detail.dart';
import 'package:flutter/material.dart';

class Booking_filter extends StatefulWidget {

  static const routename="Booking_filter";

  @override
  State<Booking_filter> createState() => _Booking_filterState();
}

class _Booking_filterState extends State<Booking_filter> {
  bool Arriving = false;

  bool Pending = false;

  bool Upcoming = false;

  bool Currently_hosting = false;

  bool Checking_out = false;

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
        leading: IconButton(icon: Icon(Icons.close_outlined,color: Colors.black),onPressed: (){
          Navigator.of(context).pop();
        }),
        title: Text("Filter bookings",style: getLightBlackstyle(16, FontWeight.w600),),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Text("Arriving ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Arriving, onChanged: (val) {
              setState(() {
                Arriving=val!;
              });

            }),
          ),
          ListTile(
            leading: Text("Pending ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Pending, onChanged: (val) {
              setState(() {
                Pending=val!;
              });
            }),
          ),
          ListTile(
            leading: Text("Upcoming ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Upcoming, onChanged: (val) {
              setState(() {
                Upcoming=val!;
              });
            }),
          ),
          ListTile(
            leading: Text("Currently hosting ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Currently_hosting, onChanged: (val) {
              setState(() {
                Currently_hosting=val!;
              });
            }),
          ),

          ListTile(
            leading: Text("Checking out ",style: getLightBlackstyle(14, FontWeight.w400)),
            trailing: Checkbox(value: Checking_out, onChanged: (val) {
              setState(() {
                Checking_out=val!;
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
Navigator.of(context).pushNamed(Reservartion_Detail.routename);
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