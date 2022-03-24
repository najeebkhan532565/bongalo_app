import 'package:bongalo/Start_up/Guest_Here.dart';
import 'package:flutter/material.dart';
class Choose_Place_Type extends StatefulWidget {
  static const routename="Choose_Place_Type";
  @override
  State<Choose_Place_Type> createState() => _Choose_Place_TypeState();

}

class _Choose_Place_TypeState extends State<Choose_Place_Type> {
  bool apt=false;
bool guest=false;
bool house=false;

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
                    child: Text("What kind of place are you listing?",style: TextStyle(fontFamily: 'Inter-Regular',color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),))

              ],
            ),
          ),


          SizedBox(height: height*0.02,),
  Card(
    color: apt? Color(0xffF4F8FF):Colors.white,
    margin: EdgeInsets.only(left: width*0.025,right: width*0.025),
    shape: RoundedRectangleBorder(
side: BorderSide(color: apt? Colors.blue:Colors.white),
      borderRadius: BorderRadius.circular(10),
    ),
    child : Padding(
      padding: EdgeInsets.all(9),
      child: ListTile(

        onTap: (){
          setState(() {
            apt=!apt;
          });
        },
minLeadingWidth: width*0.1,
        leading:Container(
          width: width*0.15,
          decoration: BoxDecoration(
              color: apt? Color(0xfff4f8ff):Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.o7NcNYQjvyyYHs_mJvtpvwHaE7&pid=Api&P=0&w=278&h=185")
            )
          ),
        ),
        title: Text("Apartment",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 18,fontWeight: FontWeight.bold),),
      ),
    ),
  ),
          SizedBox(height: height*0.02,),

          Card(
            color: guest? Color(0xffF4F8FF):Colors.white,
            margin: EdgeInsets.only(left: width*0.025,right: width*0.025),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: guest? Colors.blue:Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),

            child : Padding(
              padding: EdgeInsets.all(9),
              child: ListTile(
                onTap: (){
                  setState(() {
                    guest=!guest;
                  });
                },
                minLeadingWidth: width*0.1,
                leading:Container(
                  width: width*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: guest? Color(0xfff4f8ff):Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.vuIt9cwT6nFgYUJzxwPAIQHaDW&pid=Api&P=0&w=338&h=153")
                      )
                  ),
                ),
                title: Text("Guest lodge",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          SizedBox(height: height*0.02,),
          Card(
            color: house? Color(0xffF4F8FF):Colors.white,
            margin: EdgeInsets.only(left: width*0.025,right: width*0.025),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: house? Colors.blue:Colors.white),
            ),

            child : Padding(
              padding: EdgeInsets.all(9),
              child: ListTile(
                onTap: (){
                  setState(() {
                    house=!house;
                  });
                },
                minLeadingWidth: width*0.1,
                leading:Container(
                  width: width*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.osvVFu2C52l57XTpg9NE2wHaE8&pid=Api&P=0&w=234&h=156")
                      )
                  ),
                ),
                title: Text("House",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
          ),


        ],
      ),

      bottomNavigationBar:

      (apt==true || guest==true || house==true )?

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
                Navigator.of(context).pushNamed(Guest_Here.routename);
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
      ):

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

              },
              child: Container(
                height: height*0.06,
                width: width*0.2,

                decoration: BoxDecoration(
                  color:  Color.fromRGBO(600, 100, 252, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            ),
          ],
        ),
      )


    );
  }
}
