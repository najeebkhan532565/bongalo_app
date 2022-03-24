import 'dart:ui';
import 'package:bongalo/host/host_dashboard.dart';
import 'package:bongalo/module/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Host_Bank__Payout_Method extends StatefulWidget {
  static const routename="Host_Bank__Payout_Method";

  @override
  _Host_Bank__Payout_MethodState createState() => _Host_Bank__Payout_MethodState();
}

class _Host_Bank__Payout_MethodState extends State<Host_Bank__Payout_Method> {
  bool select_item = false;
  String ? select_method;

  List<String> Host_Bank__Payout_Method=["Paypal","Moneygram"];


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
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
        title: Text(
          "Payout method",
          style: TextStyle(fontSize: 18, color: Color.fromRGBO(64, 64, 64, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height*1.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              SizedBox(
                height: height * 0.02,
              ),

              Container(
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: Text("Payout Method",style:  TextStyle(
                    color: Color(0xff9099A6),
                    fontSize: 14
                ),),
              ),

              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.07,
                width: width * 1,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xff9099A6),
                        width: 1)),
                padding: EdgeInsets.only(left: width * 0.025),

                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: DropdownButton(
                  hint: Text(
                    "Select Payment Method"
                    ,style: getLightBlackstyle(14, FontWeight.w400),
                  ),
                  alignment: Alignment.centerLeft,
                  value:select_method,
                  style:getLightBlackstyle(14, FontWeight.w400),
                  onChanged: (value) {
                    setState(() {
                      select_method=value.toString();
                    });


                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(Icons.expand_less),
                  ),
                  menuMaxHeight:
                  MediaQuery.of(context).size.height * 0.5,
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  items: Host_Bank__Payout_Method
                      .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString())))
                      .toList(),
                ),
              ),

              //country
              SizedBox(
                height: height * 0.02,
              ),

              Container(
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: Text("Country",style:  TextStyle(
                    color: Color(0xff9099A6),
                    fontSize: 14
                ),),
              ),

              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.07,
                width: width * 1,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xff9099A6),
                        width: 1)),
                padding: EdgeInsets.only(left: width * 0.025),

                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: DropdownButton(
                  hint: Text(
                    "Select Country"
                    ,style: getLightBlackstyle(14, FontWeight.w400),
                  ),
                  alignment: Alignment.centerLeft,
                  value:select_method,
                  style:getLightBlackstyle(14, FontWeight.w400),
                  onChanged: (value) {
                    setState(() {
                      select_method=value.toString();
                    });


                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(Icons.expand_less),
                  ),
                  menuMaxHeight:
                  MediaQuery.of(context).size.height * 0.5,
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  items: Host_Bank__Payout_Method
                      .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString())))
                      .toList(),
                ),
              ),



              SizedBox(
                height: height * 0.02,
              ),


              Container(
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: Text("Bank name",style:  TextStyle(
                    color: Color(0xff9099A6),
                    fontSize: 14
                ),),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(

                    onChanged: (value){
                      setState(() {

                      });
                    },
                    style:  TextStyle(
                        color: Color(0xff9099A6),
                        fontSize: 14
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Bank name"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),


              SizedBox(
                height: height * 0.02,
              ),


              Container(
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: Text("Account number",style:  TextStyle(
                    color: Color(0xff9099A6),
                    fontSize: 14
                ),),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(

                    onChanged: (value){
                      setState(() {

                      });
                    },
                    style:  TextStyle(
                        color: Color(0xff9099A6),
                        fontSize: 14
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Account number"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),







              SizedBox(
                height: height * 0.02,
              ),


              Container(
                margin:
                EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                child: Text("Swift Code",style:  TextStyle(
                    color: Color(0xff9099A6),
                    fontSize: 14
                ),),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xff9099A6),
                          width: 1)),
                  padding: EdgeInsets.only(left: width * 0.025),

                  margin:
                  EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child:TextField(

                    keyboardType: TextInputType.number,
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    style:  TextStyle(
                        color: Color(0xff9099A6),
                        fontSize: 14
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Swift Code"
                        ,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff9099A6),
                            fontSize: 14
                        )
                    ),
                  )),

              SizedBox(height: height*0.07,),

              InkWell(
                onTap: (){
Navigator.of(context).pushNamed(Host_Dashboard.routename);
                },
                child: Container(
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  height: height*0.055,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3C85FF),
                  ),

                  child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),
                ),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
