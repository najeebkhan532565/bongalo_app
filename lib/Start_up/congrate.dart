import 'package:bongalo/Start_up/Guest_Here.dart';
import 'package:bongalo/Start_up/amminities.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:flutter/material.dart';
class Congrates extends StatelessWidget {
  static const routename="Congrates";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: height * 0.5,
            width: width * 1,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)),
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
                    margin: EdgeInsets.only(
                        left: width * 0.05, right: width * 0.05),


                    child: Text(
                      "Congratulations Ngege",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ))

                ,
                SizedBox(height: height*0.01,),
                Container(
                  margin: EdgeInsets.only(
                      left: width * 0.05, right: width * 0.05,top: height*0.025),

                  child: Text("Host are at the souls of everything we do,we havefor you the very best of experience you will need to unlock the magic of hosting with us. -Bongalo team",style:TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                     )),
                ),

                SizedBox(height: height*0.06,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(Ammenities.routename);
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                              "Preview",
                              style: TextStyle(color: Colors.blue, fontSize: 16),
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(Explore.routename);
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)
                        ),
                        child: Center(
                            child: Text(
                              "Go Home",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ),
                    ),
                  ],
                )


              ],
            ),
          ),


        ],
      ),
    ) ;
  }
}
