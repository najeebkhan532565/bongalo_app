import 'package:bongalo/Start_up/payout.dart';
import 'package:bongalo/Start_up/payout2.dart';
import 'package:bongalo/profile/payment_payout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Setting extends StatelessWidget {
  static const routename="Setting";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xfff5f5f5),
        title:  Text("Setting",style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(64, 64, 64, 1)
        ),),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed(Payment_Payout.routename);
            },
            leading: SvgPicture.asset('images/payout.svg'),
            title: Text(
              "payouts",
              style: TextStyle(
                  color: Color(0xff9099A6),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff9099A6),
            ),
          ),

          ListTile(
            leading: SvgPicture.asset('images/privacy.svg'),
            title: Text(
              "Login & security",
              style: TextStyle(
                  color: Color(0xff9099A6),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff9099A6),
            ),
          ),

        ],
      ),
    );
  }
}
