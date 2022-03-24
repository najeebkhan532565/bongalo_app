import 'package:bongalo/screen/Choose_Place_Type.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  static const routename="Welcome";

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
 bool create_newlist=false;
 bool duplicate=false;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;


    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height*0.35,
            width: width*1,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
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
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,color:Colors.white),
                      Text("Help",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: height*0.1,),

                Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("Welcome Ngege",style: TextStyle(fontFamily: 'Inter-Regular',color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),))

              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("New Listing")),

          SizedBox(height: height*0.02,),

          InkWell(
 onTap: (){
   setState(() {
     create_newlist=!create_newlist;
   });
 },
            child: Container(
              height: height*0.08,
              width: width*1,
              decoration: BoxDecoration(
                  color:create_newlist? Color(0xfff4f8ff):Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: create_newlist?Colors.blue:Colors.grey,width: 1.5)
              ),
              padding: EdgeInsets.only(left: width*0.025),
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              child: Row(

                children: [
                  Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  SizedBox(width: width*0.02,),
                  Text("Create New Listing",style: TextStyle(fontSize: 16,color: Colors.grey),)

                ],
              ),
            ),
          ),
          SizedBox(height: height*0.02,),
          InkWell(
            onTap: (){
 setState(() {
   duplicate=!duplicate;
 });
            },
            child: Container(
              height: height*0.08,
              width: width*1,
              decoration: BoxDecoration(
                color: duplicate? Color(0xfff4f8ff):Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:
                  duplicate?Colors.blue:
                  Colors.grey,width: 1.5)
              ),
              padding: EdgeInsets.only(left: width*0.025),
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              child: Row(

                children: [
                  Image.asset('images/system-uicons_duplicate-alt.png'),
                  SizedBox(width: width*0.03,),
                  Text("Duplicate Existing Listing",style: TextStyle(fontSize: 16,color: Colors.grey),)

                ],
              ),
            ),
          )


        ],
      ),

bottomNavigationBar:

(create_newlist==true || duplicate==true)?

Container(
  height: height*0.11,
  width: width*1,
  color: Colors.white,
  padding: EdgeInsets.only(left: width*0.05,right: width*0.05),
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
          Navigator.of(context).pushNamed(Choose_Place_Type.routename);
        },
        child: Container(
          height: height*0.06,
          width: width*0.2,

          decoration: BoxDecoration(
            color: Colors.blue,
borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 16),)),
        ),
      ),
    ],
  ),
):Text(""),
    );
  }
}

