import 'dart:ui';
import 'package:bongalo/Start_up/rules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ammenities extends StatefulWidget {
  static const routename="Ammenities";

  @override
  _AmmenitiesState createState() => _AmmenitiesState();
}

class _AmmenitiesState extends State<Ammenities> {
  bool create_newlist = false;
  bool duplicate = false;
List<Map> amminities=[
  {
    'name':'Kitchen',
    'icon':'images/kitchen.svg'
  },

  {
    'name':'Air Conditioner',
    'icon':'images/conditioner.svg'
  },  {
    'name':'Gym equipment',
    'icon':'images/gym.svg'
  },  {
    'name':'Hair Dryer',
    'icon':'images/hair-dryer.svg'
  },  {
    'name':'Heater',
    'icon':'images/heater.svg'
  },  {
    'name':'Parking',
    'icon':'images/parking.svg'
  },  {
    'name':'Swimming pool',
    'icon':'images/swimmingpool.svg'
  },  {
    'name':'Hot Tub',
    'icon':'images/tub.svg'
  },  {
    'name':'Wifi',
    'icon':'images/wifi.svg'
  },  {
    'name':'Washing machine',
    'icon':'images/washing-machine.svg'
  },
];
bool select_item=false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height*1.5,
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
                          "What ammenities does your place offer?",
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
  margin: EdgeInsets.only(left: width*0.025,right: width*0.025),

  child:   Text("These are basic stuff that your guests usually expect.Make sure to add all that you have, in order to attract more guests.",style: TextStyle(
    color: Color.fromRGBO(107, 107, 117, 1)
  ),),
),

              Container(
                margin: EdgeInsets.only(left: width*0.025,right: width*0.025),

                height: height*1,
                child: GridView.builder(
                  itemCount: amminities.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 120,
                ), itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        select_item=!select_item;
                      });
                    },
                    child: Container(
width: width*0.1,
height: height*0.1,
decoration: BoxDecoration(
  color: select_item ? Color(0xfff4f8ff):Colors.white,
  border: Border.all(color: Color(0xffEEEEEE),width: 1.8),
  borderRadius: BorderRadius.circular(10)
),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(amminities[index]['icon'],height: height*0.07,fit: BoxFit.fill,)

                          ,SizedBox(height: height*0.02,),
                          Text(amminities[index]['name'],style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),

                        ],
                      ),

                    ),
                  );
                }),
              )





            ],
          ),
        ),
      ),
      bottomNavigationBar: (select_item == true)
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
                Navigator.of(context).pushNamed(Rules.routename);
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
