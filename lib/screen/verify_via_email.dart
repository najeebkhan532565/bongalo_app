import 'package:bongalo/screen/password_reset.dart';
import 'package:flutter/material.dart';
class Verify_via_Email extends StatelessWidget {
  static const routename="Verify_via_Email";

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
mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height*0.17,),
        Container(
          height: height*0.2,
          width: width*0.3,
          decoration: BoxDecoration(
            color: Color.fromRGBO(98, 200, 134, 0.2),
            border: Border.all(color: Colors.green,width: 2),
            shape: BoxShape.circle
          ),
          child: Icon(Icons.done,color: Colors.green,size: 50,),
        ),
          SizedBox(height: height*0.02,),
          Container(
              width: width*1,
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('A reset link has been sent to lsuleiman@bongalo.com',
                style: TextStyle(color: Color(0xff6B6B75),fontFamily: 'Inter-Regular',fontSize: 14,fontWeight: FontWeight.w400),

                textAlign: TextAlign.center,
              )),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Password_Reset.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Open my email",style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
