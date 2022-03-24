import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/inbox.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:bongalo/screen/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
int current_index=0;
class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
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
        selectedIndex: current_index,
        onDestinationSelected: (index){
          setState(() {
            current_index=index;
          });
if(current_index==0){
  Navigator.of(context).pushReplacementNamed(Explore.routename);
}
          if(current_index==1){
            Navigator.of(context).pushReplacementNamed(Wishlist.routename);
          }
          if(current_index==2){
            Navigator.of(context).pushReplacementNamed(Trips.routename);
          }
          if(current_index==3){

              Navigator.of(context).pushReplacementNamed(Inbox.routename);

          }
          if(current_index==4){
            Navigator.of(context).pushReplacementNamed(Guest_Profile.routename);
          }

          print(current_index);
        },
        backgroundColor: Colors.white,
        destinations: [
          current_index==0?
          NavigationDestination( icon: SvgPicture.asset('images/Search.svg',color: Colors.blue),label: "Explore",)

              :
          NavigationDestination( icon: SvgPicture.asset('images/Search.svg',color: Color(0xffA1A1A1)),label: "Explore",),

          current_index==1?
          NavigationDestination( icon: SvgPicture.asset('images/wishlist.svg',color: Colors.blue),label: "Wishlist"):
          NavigationDestination( icon: SvgPicture.asset('images/wishlist.svg',color: Color(0xffA1A1A1)),label: "Wishlist",),

          current_index==2?
          NavigationDestination( icon: SvgPicture.asset('images/trips.svg',color: Colors.blue),label: "Trips",):
          NavigationDestination( icon: SvgPicture.asset('images/trips.svg',color: Color(0xffA1A1A1)),label: "Trips",),

          current_index==3?
          NavigationDestination( icon: SvgPicture.asset('images/mail.svg',color: Colors.blue),label: "Inbox",):
          NavigationDestination( icon: SvgPicture.asset('images/mail.svg',color: Color(0xffA1A1A1)),label: "Inbox",),

          current_index==4?
          NavigationDestination( icon: SvgPicture.asset('images/personal.svg',color: Colors.blue),label: "Profile",):
          NavigationDestination( icon: SvgPicture.asset('images/personal.svg',color: Color(0xffA1A1A1)),label: "Profile",),

        ],
      ),
    );
  }
}
