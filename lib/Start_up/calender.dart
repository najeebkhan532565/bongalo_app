import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:ui';
import 'package:bongalo/Start_up/price_set.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calender_Screen extends StatefulWidget {
  static const routename="Calender_Screen";

  @override
  _Calender_ScreenState createState() => _Calender_ScreenState();
}

class _Calender_ScreenState extends State<Calender_Screen> {
  bool select_item = false;

  TextEditingController _name=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _name.dispose();
  }
  List<DateTime> date=[];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
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
                      "Update your calendar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
      SfDateRangePicker(
        onSelectionChanged: (val){
          print(val.value);

           if (val.value is DateTime) {
         String a=  DateFormat('dd/MM/yyyy')
              .format(val.value)
              .toString();
          print("so val is "+a.toString());
           }
           else if (val.value is List<DateTime>) {
             (val.value as List).forEach((element) {
               setState(() {
                 date.add(element);
               });

             });
print("janu "+date.length.toString());
           }
        },
          view: DateRangePickerView.year,
          monthViewSettings: DateRangePickerMonthViewSettings(blackoutDates:date),
        selectionMode: DateRangePickerSelectionMode.multiple,
        )

        ],
      ),
      bottomNavigationBar: (date.length>0)
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
              onTap: (){
                Navigator.of(context).pushNamed(Price_Set.routename);
              },
              child: Container(
                height: height*0.06,
                width: width*0.2,

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

// class Calender_Screen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SfDateRangePicker(
//           view: DateRangePickerView.year,
//           monthViewSettings: DateRangePickerMonthViewSettings(blackoutDates:[DateTime(2022, 03, 3), DateTime(2022, 03, 4)]),
//         selectionMode: DateRangePickerSelectionMode.multiple,
//         )
//     );
//   }
// }