import 'dart:async';

import 'package:bongalo/Start_up/congrate.dart';
import 'package:bongalo/screen/onbaord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Published extends StatefulWidget {
  static const routename="Published";

  @override
  State<Published> createState() => _PublishedState();
}

class _PublishedState extends State<Published> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
        seconds: 3
    ), ()=>Navigator.of(context).pushNamed(Congrates.routename));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Congrates.routename);
            },
            child: Text("Published",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ),
        ),
      ),
    );
  }
}
