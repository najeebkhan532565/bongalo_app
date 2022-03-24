import 'dart:async';

import 'package:bongalo/screen/onbaord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Splash extends StatefulWidget {
  static const routename="Splash";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
Timer(Duration(
  seconds: 3
), ()=>Navigator.of(context).pushNamed(Onboard_Screen.routename));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: double.infinity,
        color: Color(0xff3C85FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('images/logo.svg'),

          ],
        ),
      ),
    );
  }
}
