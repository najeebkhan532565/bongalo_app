import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/property_detail.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  static const routename="Filter";

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool entireplace = false;
  bool private = false;
  bool shared = false;
  int age = 10;
  bool create_newlist = false;
  bool duplicate = false;
  int guest=0;
  int bed=0;
  int bedrooms=0;
  int bathrooms=0;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 20,
          ),
        ),
        elevation: 0,
        title: Text(
          "Filter",
          style: getLightBlackstyle(16, FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [

          //type of place
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Type of place",
                style:  getLightBlackstyle(20, FontWeight.w700),
              )),
SizedBox(height: height*0.01,),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: entireplace,
              onChanged: (val) {
                setState(() {
                  entireplace = val!;
                });
              },
            ),
            title: Text(
              "Entire place",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Have a place to yourself",
                style: getsecondry(14, FontWeight.w400)
              ),
            ),
          ),
          SizedBox(height: height*0.01,),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: private,
              onChanged: (val) {
                setState(() {
                  private = val!;
                });
              },
            ),
            title: Text(
              "Private room",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Have your own room and share some common spaces",
                style: getsecondry(14, FontWeight.w400)
              ),
            ),
          ),
          SizedBox(height: height*0.01,),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Shared room",
              style: getLightBlackstyle(16, FontWeight.w600)
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Stay in a shared space, like a common room",
                style: getsecondry(14, FontWeight.w400)
              ),
            ),
          ),


          SizedBox(height: height*0.02,),
         // divider
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),
         //divider
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),
          SizedBox(height: height*0.02,),
   //Price range
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Price Range",
                style: getLightBlackstyle(20, FontWeight.w700),
              )),

          SizedBox(height: height*0.03,),

          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Clear all",
                style: getLightBlackstyle(16, FontWeight.w600),
              )),
          SizedBox(height: height*0.02,),
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "\$15,000 - \$100,000+",
                style: getLightBlackstyle(14, FontWeight.w700),
              )),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Color.fromRGBO(5, 5, 5, 0.3),
              inactiveTrackColor: Color.fromRGBO(5, 5, 5, 0.3),
              trackShape: RectangularSliderTrackShape(),
              trackHeight: 1.0,
              thumbColor: Color.fromRGBO(5, 5, 5, 0.3),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
              overlayColor: Color.fromRGBO(5, 5, 5, 0.3),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 45.0),
            ),
            child: Slider(
              activeColor: Color.fromRGBO(68, 68, 68, 1),
              label: "Select Age",
              value: age.toDouble(),
              onChanged: (value) {
                setState(() {
                  age = value.toInt();
                });
              },
              min: 5,
              max: 60,
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("N15,000",
                    style: getLightBlackstyle(14, FontWeight.w700)),
                Text("N100,000+",
                    style:getLightBlackstyle(14, FontWeight.w700)),
              ],
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Sort from lowest to highest",
              style:getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Sort from highest to lowest",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),


          //Romms and beds
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Rooms and beds",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 20,
                    fontFamily: 'Inter-Bold'),
              )),
          SizedBox(
            height: height * 0.02,
          ),
          ListTile(
            title: Text(
              "Beds",style: getLightBlackstyle(14, FontWeight.w400),),

            trailing: Container(
              width: width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  InkWell(
                    onTap: (){
                      if(guest>0){
                        setState(() {
                          guest--;
                        });
                      }

                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:guest>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: guest>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  Text(guest.toString()),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        guest++;
                      });
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Bedrooms",
            style: getLightBlackstyle(14, FontWeight.w400),
            ),

            trailing: Container(
              width: width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  InkWell(
                    onTap: (){
                      if(bedrooms>0){
                        setState(() {
                          bedrooms--;
                        });
                      }

                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:bedrooms>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: bedrooms>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  Text(bedrooms.toString(),     style: TextStyle(

                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 15,
                      fontFamily: 'Inter-Regular'),),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        bed++;
                      });
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Bathrooms",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),

            trailing: Container(
              width: width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  InkWell(
                    onTap: (){
                      if(bed>0){
                        setState(() {
                          bed--;
                        });
                      }

                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:bed>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: bed>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  Text(bed.toString(),     style: TextStyle(

                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 15,
                      fontFamily: 'Inter-Regular'),),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        bed++;
                      });
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.075,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),


          //amenities
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Amenities",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 20,
                    fontFamily: 'Inter-Bold'),
              )),

          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Wifi",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Air Conditioning",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "TV",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Kitchen",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text("Show all amenities",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff404040),
                    decoration: TextDecoration.underline
                )),
          ),
       SizedBox(height: height*0.02),
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),

          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),
          SizedBox(height: height*0.02),
          //house rules
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "House and Rules",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 20,
                    fontFamily: 'Inter-Bold'),
              )),
          SizedBox(height: height*0.02),


          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Pets allowed",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Smooking allowed",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Events/Parties allowed",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),

          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Divider()),

          //host language
          Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Text(
                "Host language",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 20,
                    fontFamily: 'Inter-Bold'),
              )),

          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "English",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "German",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "French",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),
          ListTile(
            trailing: Checkbox(
              side: BorderSide(width: 0.5),
              value: shared,
              onChanged: (val) {
                setState(() {
                  shared = val!;
                });
              },
            ),
            title: Text(
              "Chineese",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
          ),



        ],
      ),
    bottomNavigationBar: Container(
      height: height * 0.08,
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
              child: Text("Clear all")),
          InkWell(
            onTap: (){
Navigator.of(context).pop();
            },
            child : Container(
              height: height * 0.06,
              width: width * 0.28,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                    "Show stays",
                    style: getwhitestyle(14, FontWeight.w500)),
                  )),
            ),

        ],
      ),
    ),

    );
  }
}
