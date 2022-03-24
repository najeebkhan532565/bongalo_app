import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/property_detail.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/module/post.dart';
import 'package:bongalo/screen/filter.dart';
import 'package:bongalo/screen/who_Coming.dart';

import 'package:bongalo/widgets/featured.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Search_Result extends StatefulWidget {

  static const routename="Search_Result";

  @override
  State<Search_Result> createState() => _Search_ResultState();
}

class _Search_ResultState extends State<Search_Result> {
  List<Post> myposts=[
    Post(image: 'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',title: 'ABC'),
    Post(title: 'def',image: 'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
  ];

  DateTimeRange ? daterange;
String mydate="";
DateTime ? inidate;
 String ? start;
int guests=0;


  Future pickdate(BuildContext context) async{

    DateTimeRange ? new_date_range= await showDateRangePicker(
        context: context,
        helpText: "When will you be there?",
        fieldStartLabelText: "When will you be there?",
        initialDateRange:daterange,
        firstDate:DateTime(2020),
        lastDate: DateTime(2023,1,1),

    );

    if(new_date_range==null)return;

    setState(() {
      daterange = new_date_range;
   mydate=daterange.toString();
    inidate=daterange!.start;
    }

      );

  }

DateTime ? date;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
print("done ");
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
title: Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10)
    ,color: Color(0xfff4f8ff),
  ),
  width: width*0.5,
  height: height*0.05,

  child: Center(child: Text("Rawalpindi",style: TextStyle(color: Color(0xff717174),fontSize: 15),))

),
        elevation: 0,
      actions: [
        InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Filter.routename);
            },
            child: Image.asset('images/filter.png'))
      ],
      ),
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    InkWell(
      onTap: ()async{
      pickdate(context);

      },
      child:

      inidate==null?
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
            ,color: Color(0xfff4f8ff),
          ),

          height: height*0.045,
          padding: EdgeInsets.only(left: width*0.02,right: width*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              inidate==null?

              Text("Add dates",style: TextStyle(color: Color(0xff717174),fontSize: 15),)

                  :

              Text('${DateFormat('dd MMM').format(daterange!.start)}'+"-"+'${DateFormat('dd MMM').format(daterange!.end)}'),

              Icon(Icons.expand_more,size: 15,)

            ],
          )

      ):

      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
            ,color: Colors.blue,
          ),

          height: height*0.045,
          padding: EdgeInsets.only(left: width*0.02,right: width*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              inidate==null?

              Text("Add dates",style: TextStyle(color: Color(0xff717174),fontSize: 15),)

                  :

              Text('${DateFormat('dd MMM').format(daterange!.start)}'+"-"+'${DateFormat('dd MMM').format(daterange!.end)}',style: TextStyle(color: Colors.white),),

              Icon(Icons.expand_more,size: 15,color: Colors.white,)

            ],
          )

      )
    ),
    SizedBox(width: width*0.04,),
    InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Who_Coming(),
            )).then((value) {
              setState(() {
                guests=value as int;
                print("so the total members are "+value.toString());
              });

        });

        // Navigator.of(context).pushNamed(Who_Coming.routename);
      },
      child: guests==0?Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
            ,color: Color(0xfff4f8ff),
          ),
          width: width*0.3,
          height: height*0.045,
padding: EdgeInsets.only(left: width*0.02,right: width*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Add guests",style: TextStyle(color: Color(0xff717174),fontSize: 15),),
              Icon(Icons.expand_more,size: 15,)
            ],
          )

      ):

      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
            ,color: Colors.blue,
          ),
          width: width*0.3,
          height: height*0.045,
          padding: EdgeInsets.only(left: width*0.02,right: width*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${guests} guests",style: TextStyle(color: Colors.white,fontSize: 15),),
              Icon(Icons.expand_more,size: 15,color: Colors.white,)
            ],
          )

      )
      ,
    ),
  ],
),
          SizedBox(
            height: height * 0.01,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: List.generate(
                    myposts.length,
                        (index) => InkWell(
                          onTap: (){
                            if(inidate==null || guests==0){
                              Navigator.of(context).pushNamed(Property_Details.routename,arguments: false);
                            }
                            else{
                              Navigator.of(context).pushNamed(Property_Details.routename,arguments: true);
                            }

                          },
                          child: Container(
                      height: height * 0.4,
                      width: width * 1,
                      margin: EdgeInsets.only(left: width * 0.05,right:width * 0.05 ),
                      child: Column(
                          children: [
                            Featured_Projects(
                              axis: false,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: width * 0.01, right: width * 0.01),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Private in Rubua",
                                            style: getLightBlackstyle(16, FontWeight.w600),
                                          ),

                                        ],
                                      )),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'images/Bedroom.png'),
                                            SizedBox(
                                              width: width * 0.02,
                                            ),
                                            Text("Bedroom",style: getLightBlackstyle(12, FontWeight.w400),),

                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                'images/Bathroom.png'),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text("Bathroom",style: getLightBlackstyle(12, FontWeight.w400),),
                                          ],
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          size: 20,
                                          color: Color(0xff9099A6),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                      child: Text(
                                        "\$830",
                                        style: getbluestyle(16, FontWeight.w600)
                                      ))
                                ],
                              ),
                            )
                          ],
                      ),
                    ),
                        ))),
          )

        ],
      ),
    // bottomNavigationBar: My_Bottom_Navigation_Bar(),
    bottomNavigationBar: Bottom_Nav(),
    );
  }
}
