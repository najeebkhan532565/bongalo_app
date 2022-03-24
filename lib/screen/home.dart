import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/inbox.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:bongalo/screen/wishlist.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/module/post.dart';
import 'package:bongalo/module/search.dart';

import 'package:bongalo/widgets/featured.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_Screen extends StatefulWidget {
  static const routename = "Home_Screen";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int current_index=0;
  List<Post> myposts = [
    Post(
        image:
            'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        title: 'ABC'),
    Post(
        title: 'def',
        image:
            'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
  ];

final screens=[
  Explore(),
  Wishlist(),
  Trips(),
  Inbox(),
  Guest_Profile()
];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[current_index],
      bottomNavigationBar: NavigationBarTheme(
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
      ),
    );
  }
}
