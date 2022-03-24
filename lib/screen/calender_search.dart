import 'package:flutter/material.dart';
class Calender_Search extends StatelessWidget {

DateTime ? _date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
InkWell(

    onTap: (){
      showDatePicker(context: context, initialDate:DateTime.now(),
      firstDate: DateTime(2001), lastDate: DateTime.now());
    },
    child: Text("Pick"))
        ],
      ),
    );
  }
}
