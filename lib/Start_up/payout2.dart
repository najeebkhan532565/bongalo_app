import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payout_Method2 extends StatefulWidget {
  static const routename="Payout_Method2";

  @override
  _Payout_Method2State createState() => _Payout_Method2State();
}

class _Payout_Method2State extends State<Payout_Method2> {
  bool select_item = false;
  String ? select_method;

  List<String> Payout_Method2=["Paypal","Moneygram"];


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
      body: SingleChildScrollView(
        child: Container(
          height: height*1.1,
          child: Column(
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
                          "Payout method",
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
              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),


                child: Text("Add a payout method to recieve your payment when guestsbook your property ",style: TextStyle(
                    color: Colors.blue
                ),),
              ),
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
                    ,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                  alignment: Alignment.centerLeft,
                  value:select_method,
                  style:TextStyle(color: Colors.black,fontSize: 14),
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
                  items: Payout_Method2
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
                    ,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                  alignment: Alignment.centerLeft,
                  value:select_method,
                  style:TextStyle(color: Colors.black,fontSize: 14),
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
                  items: Payout_Method2
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





            ],
          ),
        ),
      ),
      bottomNavigationBar: (select_method!=null && select_method!.isNotEmpty)
          ? Container(
        height: height * 0.15,
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
            Container(
              height: height * 0.07,
              width: width * 0.3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                    "Completed",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ],
        ),
      )
          : Text(""),
    );
  }
}
