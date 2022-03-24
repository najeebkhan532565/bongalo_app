import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/edit_info.dart';
import 'package:bongalo/profile/edit_personel_info.dart';
import 'package:flutter/material.dart';
class View_Profile extends StatelessWidget {
  static const routename="View_Profile";
  const View_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
          foregroundColor: Colors.black,
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Edit_Info.routename);
            },
            child: Container(
              alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(right:width*0.05),
                child: Text("Edit",style: TextStyle(
                    fontFamily: 'Inter-Regular',
                    fontSize: 14,
                    color: Color(0xff000000),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600
                ),)),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(

      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
            "https://tse4.mm.bing.net/th?id=OIP.XPzaXFsEl8zF0cW1SDySRAHaEo&pid=Api&P=0&w=253&h=158"),

      ),
    ),
    SizedBox(height: height*0.01,),
    Container(

        child: Text("Hi, I’m Lukman",style: TextStyle(
          fontFamily: 'Inter-Regular',
          fontSize: 16,
          color: Color(0xff404040),
          fontWeight: FontWeight.w600,

        ),)),

    SizedBox(height: height*0.01,),

    Container(

        child: Text("Joined in 2021",style: TextStyle(color: Color(0xff6B6B75),fontSize: 14,fontWeight: FontWeight.w400))),
    SizedBox(height: height*0.05,),


    SizedBox(height: height*0.04,),
    Container(
      width: width*1,
      height: height*0.0012,
      color: Color(0xffC4C4C4),
    ),

    SizedBox(height: height*0.04,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("🔰",style: getstyle(24, FontWeight.w700),),
        SizedBox(height: height*0.015,),
        Text("Identity verification",style: getstyle(14, FontWeight.w700)),
        SizedBox(height: height*0.01,),
        Text("Let others know you are really you with identity verification badge",
            style:getsecondry(14, FontWeight.w400))
      ],
    ),

    SizedBox(height: height*0.04,),
    InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Edit_Info.routename);
      },
      child: Container(
        height: height * 0.07,
        width: width * 0.36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)
        ),
        child: Center(
            child: Text(
              "Get Verified",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )),
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
