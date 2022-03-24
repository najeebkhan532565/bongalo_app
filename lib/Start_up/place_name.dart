import 'dart:ui';
import 'package:bongalo/Start_up/description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Place_Name extends StatefulWidget {
  static const routename="Place_Name";

  @override
  _Place_NameState createState() => _Place_NameState();
}

class _Place_NameState extends State<Place_Name> {
  bool create_newlist = false;
  bool duplicate = false;
TextEditingController _name=TextEditingController();
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
_name.dispose();
}
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
                      "Attract guests with a unique title",
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
              height: height * 0.15,
              width: width * 1,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color(0xff9099A6),
                      width: 1)),
              padding: EdgeInsets.only(left: width * 0.025,top: height*0.02,),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child:TextField(
                controller: _name,
                onChanged: (value){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  hintText: "eg: Heaven bird apartment"
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
            margin: EdgeInsets.only(right: width*0.07),
              alignment: Alignment.topRight,
              child: Text(_name.text.length.toString()+"/50",style: TextStyle( color: Color(0xff9099A6),),))

        ],
      ),
      bottomNavigationBar: (_name.text.length>0)
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
                Navigator.of(context).pushNamed(Description.routename);
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
