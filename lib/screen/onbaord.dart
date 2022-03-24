import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard_Screen extends StatelessWidget {
  static const routename = "Onboard_Screen";
  PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
      children: [
        PageView(
          controller: _page,
          children: [
            First_Screen(context, _page),
            Second_Screen(context),
            Third_Screen(context),
          ],
        ),
        Positioned(
          left: width * 0.4,
          bottom: height * 0.4,
          child: SmoothPageIndicator(
            count: 3,
            effect: SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 24.0,
                dotHeight: 2.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: Color(0xffA49D9D),
                activeDotColor: Color(0xff3C85FF)),
            onDotClicked: (index) => _page.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.bounceOut),
            controller: _page,
          ),
        ),
      ],
    ));
  }
}

Widget Second_Screen(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Container(
          margin: EdgeInsets.only(right: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Register.routename);
                  },
                  child:
                  Text("SKIP", style: TextStyle(color: Color(0xff3C85FF),fontSize: 14,fontWeight: FontWeight.bold,fontFamily: ''))


              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Container(
          height: height * 0.4,
          margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: SvgPicture.asset('images/pic2.svg'),
        ),

        SizedBox(
          height: height * 0.1,
        ),

        Container(
            margin: EdgeInsets.only(left: width * 0.05),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Home away from home",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff3C85FF)),
            )),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
            margin: EdgeInsets.only(left: width * 0.05,right: width*0.05),
            width: width * 1,
            // child: Text(
            //   "Stay in a place that feels exactly like home yet, away from home.",
            //   style: TextStyle(fontSize: 14, color: Color(0xff6B6B75)),
            // )
        child:   Text("Stay in a place that feels exactly like home yet, away from home.",
          style: TextStyle(color: Color(0xff6B6B75),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular')),

        )
      ],
    ),
  );
}

Widget First_Screen(BuildContext context, PageController page) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Container(
          margin: EdgeInsets.only(right: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Register.routename);
                  },
                  child:
                  Text("SKIP", style: TextStyle(color: Color(0xff3C85FF),fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Inter-Regular'))

              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Container(
          height: height * 0.4,
          margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
       child: SvgPicture.asset('images/pic1.svg'),
        ),
        SizedBox(
          height: height * 0.1,
        ),
        Container(
            margin: EdgeInsets.only(left: width * 0.05),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Choose from a thousand places",
              style: TextStyle(color: Color(0xff3C85FF),fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'Inter-Regular'),
            )),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
            margin: EdgeInsets.only(left: width * 0.05,right: width*0.05),
            width: width * 1,
            child: Text(
              "We provide you with a variant of accommodation for a better choice.",
              style: TextStyle(color: Color(0xff6B6B75),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular'),

            )),
      ],
    ),
  );
}

Widget Third_Screen(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        SizedBox(
          height: height * 0.18,
        ),
        Container(
          height: height * 0.4,
          margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: SvgPicture.asset('images/pic3.svg'),
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Container(
            margin: EdgeInsets.only(left: width * 0.05),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Cool and secure spaces",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff3C85FF)),
            )),
        SizedBox(
          height: height * 0.025,
        ),

        Container(
            margin: EdgeInsets.only(left: width * 0.05,right: width*0.05),
            width: width * 1,
            child: Text(
              "We conect you with beautiful and highly secured places to stay.",
              style: TextStyle(color: Color(0xff6B6B75),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular'),

            )),
        SizedBox(
          height: height * 0.05,
        ),

        InkWell(
          onTap: (){
            Navigator.of(context).pushNamed(Register.routename);
          },
          child: Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            height: height*0.055,
            width: width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff3C85FF)
            ),

            child: Center(child: Text("Click here to start",style: getwhitestyle(14, FontWeight.w700),)),
          ),
        )

      ],
    ),
  );
}
