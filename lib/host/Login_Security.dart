import 'package:bongalo/Start_up/payout.dart';
import 'package:bongalo/Start_up/payout2.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/payment_payout.dart';
import 'package:bongalo/profile/update_password.dart';
import 'package:flutter/material.dart';
class Login_Security extends StatelessWidget {
  static const routename="Login_Security";


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Color(0xfff5f5f5),
        title:  Text("Login  & security",style: getLightBlackstyle(16, FontWeight.w600)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text(
              "Login",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
          ),

          ListTile(
            onTap: (){

            },

            title: Text(
              "Password",
              style: get_default_text_in_field(16, FontWeight.w600),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: height*0.005,right: width*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Last updated 2 months ago',style: get_default_text_in_field(14, FontWeight.w400),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Update_Password.routename);
                    },
                    child: Text("update",style: TextStyle(
                        fontFamily: 'Inter-Regular',
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                  )
                ],
              ),
            ),

          ),

         SizedBox(height: height*0.025,),

          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text(
              "Social accounts",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
          ),

          ListTile(
            onTap: (){

            },

            title: Text(
              "Google",
              style: get_default_text_in_field(16, FontWeight.w600),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: height*0.005,right: width*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Not connected',style: get_default_text_in_field(14, FontWeight.w400),),
                  Text("Connect",style: TextStyle(
                      fontFamily: 'Inter-Regular',

                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),

          ),
          ListTile(
            onTap: (){

            },

            title: Text(
              "Facebook",
              style: get_default_text_in_field(16, FontWeight.w600),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: height*0.005,right: width*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Not connected',style: get_default_text_in_field(14, FontWeight.w400),),
                  Text("Connect",style: TextStyle(
                      fontFamily: 'Inter-Regular',

                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),

          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text(
              "Account",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width *0.05,right: width*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Deactivate your account",style: get_default_text_in_field(14, FontWeight.w400),),
                Text("Deactivate",style: TextStyle(
                    fontFamily: 'Inter-Regular',

                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
