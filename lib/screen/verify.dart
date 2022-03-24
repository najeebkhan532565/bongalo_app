import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/verify_pin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Verify extends StatelessWidget {
  static const routename="Verify";

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

        children: [
          SizedBox(height: height*0.1,),
          SvgPicture.asset('images/Succes Icon.svg'),
          SizedBox(height: height*0.05,),

          SizedBox(height: height*0.04,),

          Container(
              width: width*0.75,
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('A verification code has been sent to  lsuleiman@bongalo.co and 08030666152',
                style: TextStyle(color: Color(0xff404040),fontFamily: 'Inter-Regular',fontSize: 14,fontWeight: FontWeight.w400),

                textAlign: TextAlign.center,
              )),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Verify_Pin.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Verify",style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
