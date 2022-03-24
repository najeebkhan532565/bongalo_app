import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/createAccount.dart';
import 'package:bongalo/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Register extends StatelessWidget {
  static const routename="Register";

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: height*0.1,),
          SvgPicture.asset('images/pic4.svg'),
          SizedBox(height: height*0.04,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(CreateAccount.routename);
            },
            child: Container(
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Sign up with email",
                style:getwhitestyle(14, FontWeight.w700),)
              ),

            ),
          ),
          SizedBox(height: height*0.04,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height*0.001,
                  width: width*0.4,
                  color: Color(0xffE2E8F0),
                ),
                SizedBox(width: width*0.02,),
                Text("or",style: TextStyle(color: Color(0xff3C85FF),fontWeight: FontWeight.w500,fontSize: 14,fontFamily: 'Inter-Regular'),),
                SizedBox(width: width*0.02,),
                Container(
                  height: height*0.001,
                  width: width*0.4,
                  color: Color(0xffE2E8F0),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.04,),
          Container(
            height: height*0.055,

            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff3C85FF))
            ),
            child: Row(

              children: [
                Container(
                  width: width*0.17,
                  child: SvgPicture.asset('images/google.svg'),
                ),
                SizedBox(width: width*0.11,),
                Text(
                  'Sign up with Google',
                  style: TextStyle(
                    color: Color(0xff3C85FF),
                    fontFamily: 'ProximaNova-Regular',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,

                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: height*0.02,),
          Container(
            height: height*0.055,
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(color: Color(0xff3C85FF),),
                borderRadius: BorderRadius.circular(10)
            ),


            child: Row(


              children: [

                Container(
                  width: width*0.17,
                  child: SvgPicture.asset('images/apple.svg'),
                ),
                SizedBox(width: width*0.11,),
                Text(
                  'Sign up with Apple',
                  style: TextStyle(
                    color: Color(0xff3C85FF),
                    fontFamily: 'ProximaNova-Regular',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,

                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: height*0.02,),
          Container(
            height: height*0.055,

            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff3C85FF))
            ),
            child: Row(

              children: [
                Container(
                  width: width*0.17,
                  child: SvgPicture.asset('images/fb.svg'),
                ),
                SizedBox(width: width*0.11,),
                Text(
                  'Sign up with facebook',
                  style:  TextStyle(
                    color: Color(0xff3C85FF),
                    fontFamily: 'ProximaNova-Regular',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.04,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already a member?"),
              InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(Login.routename);
                  },
                  child: Text(" Log in",style: TextStyle(color: Color(0xff3C85FF)),))
            ],
          )
        ],
      ),
    );
  }
}
