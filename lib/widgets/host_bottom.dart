import 'package:bongalo/host/host_dashboard.dart';
import 'package:bongalo/host/host_profile.dart';
import 'package:bongalo/host/listing.dart';
import 'package:bongalo/profile/booking.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/inbox.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:bongalo/screen/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
int host_index=0;
class Host_Bottom_Navigation_Bar extends StatefulWidget {
  const Host_Bottom_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Host_Bottom_Navigation_Bar> createState() => _Host_Bottom_Navigation_BarState();
}

class _Host_Bottom_Navigation_BarState extends State<Host_Bottom_Navigation_Bar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter-Regular',
                  color: Color(0xff6B6B75)

              )
          )
      ),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        animationDuration: Duration(seconds: 3),
        selectedIndex: host_index,
        onDestinationSelected: (index){
          setState(() {
            host_index=index;
          });
          if(host_index==0){
            Navigator.of(context).pushReplacementNamed(Host_Dashboard.routename);
          }
          if(host_index==1){
            Navigator.of(context).pushReplacementNamed(Booking.routename);
          }
          if(host_index==2){
            Navigator.of(context).pushReplacementNamed(Host_Listing.routename);
          }
          if(host_index==3){

            Navigator.of(context).pushReplacementNamed(Host_Profile.routename);

          }


          print(host_index);
        },
        backgroundColor: Colors.white,
        destinations: [
          host_index==0?
          NavigationDestination( icon: SvgPicture.asset('images/home.svg',color: Colors.blue),label: "Home",)

              :
          NavigationDestination( icon: SvgPicture.asset('images/home.svg',color: Color(0xffA1A1A1)),label: "Home",),

          host_index==1?
          NavigationDestination( icon: SvgPicture.asset('images/trips.svg',color: Colors.blue),label: "Booking"):
          NavigationDestination( icon: SvgPicture.asset('images/trips.svg',color: Color(0xffA1A1A1)),label: "Booking",),

          host_index==2?
          NavigationDestination( icon: SvgPicture.asset('images/listing.svg',color: Colors.blue),label: "Listing",):
          NavigationDestination( icon: SvgPicture.asset('images/listing.svg',color: Color(0xffA1A1A1)),label: "Listing",),

          host_index==3?
          NavigationDestination( icon: SvgPicture.asset('images/menu.svg',color: Colors.blue),label: "Menu",):
          NavigationDestination( icon: SvgPicture.asset('images/menu.svg',color: Color(0xffA1A1A1)),label: "Menu",),


        ],
      ),
    );
  }
}
