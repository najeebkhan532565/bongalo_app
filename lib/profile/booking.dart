import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/profile/booking_filter.dart';
import 'package:bongalo/profile/reservation_detail.dart';
import 'package:bongalo/widgets/host_bottom.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/trips.dart';

import 'package:flutter/material.dart';
class Booking extends StatelessWidget {
  static const routename="Booking";

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Wishlist"),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),

      body: ListView(

        children: [
          Container(
            margin: EdgeInsets.only(left: width*0.025,right: width*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All bookings",
                  style: TextStyle(
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 16,
                      fontFamily: 'Inter-Regular',
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset('images/search.png'),
                      SizedBox(width: width*0.05,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed(Booking_filter.routename);
                          },
                          child: Image.asset('images/filter.png'))
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: height*0.025,),
         Column(
           children: List.generate(4, (index) => InkWell(
             onTap: (){
               Navigator.of(context).pushNamed(Reservartion_Detail.routename);
             },
             child: Card(
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
               ),
               margin: EdgeInsets.only(left: width*0.025,right: width*0.025,top: height*.05),
               child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100)
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: height*0.17,
                       width: width*1,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               fit: BoxFit.fill,
                               image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.xfxxeN5ErdCifxW8r25NcgHaE-&pid=Api&P=0&w=277&h=186")
                           )
                       ),
                     ),
                     SizedBox(height: height*0.02,),

                     Container(
                       margin: EdgeInsets.only(left: width*0.035,right: width*0.035),
                       height: height*0.1,
                       width: width*1,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Text("Anastasia’s Paradise",style: TextStyle(
                               fontWeight: FontWeight.w600,
                               color: Color.fromRGBO(64, 64, 64, 1),
                               fontSize: 16,
                               fontFamily: 'Inter-Regular'),),
                           SizedBox(height: height*0.01,),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("27 Nov - 6 Dec",style: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       color: Color.fromRGBO(107, 107, 117, 1),
                                       fontSize: 14,
                                       fontFamily: 'Inter-Regular')),
                                   Text("5 guests",style: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       color: Color.fromRGBO(107, 107, 117, 1),
                                       fontSize: 14,
                                       fontFamily: 'Inter-Regular')),
                                 ],
                               ),
                               Container(
                                 child: CircleAvatar(
                                   radius: 20,
                                   backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.GNNGsGugI6OVyorHEwvE-QHaEK&pid=Api&P=0&w=281&h=158"),
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           )),
         )

        ],
      ),
      bottomNavigationBar: Host_Bottom_Navigation_Bar(),


      // bottomNavigationBar: My_Bottom_Navigation_Bar(),
    );
  }
}
