import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:flutter/material.dart';
class Payment_Success extends StatelessWidget {
  static const routename="Payment_Success";

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("Booking successful",style: TextStyle(
                  color: Color(0xff404040),
                  fontSize: 20,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w700))),

          SizedBox(height: height*0.02,),

          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("Booking ID - ABC123",style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w600))),
          SizedBox(height: height*0.02,),
          Container(
              width: width*0.9,
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Thanks for booking your stay!\n An email containing your booking details will be sent to your shortly!',style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontSize: 14,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
              )),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Trips.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Go to trips",style: getwhitestyle(14, FontWeight.w700),)),
            ),
          ),
        ],
      ),
    );
  }
}
