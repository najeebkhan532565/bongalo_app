import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Date_Screen extends StatefulWidget {
  @override
  State<Date_Screen> createState() => _Date_ScreenState();
}

class _Date_ScreenState extends State<Date_Screen> {
DateTimeRange ? daterange;

Future pickdate(BuildContext context)async{
   DateTimeRange ? new_date_range=await showDateRangePicker(
      context: context,
      initialDateRange:daterange,
      firstDate:DateTime(2020),
      lastDate: DateTime(2023,1,1));
   if(new_date_range==null)return;

   setState(() =>daterange=new_date_range);

}

@override
  Widget build(BuildContext context) {
  try{
    final start=daterange!.start;
    final end=daterange!.end;
print("fist datee  is "+start.toString());
    print("Last date is "+end.toString());
  }catch(error){

  }


    return Scaffold(
     body: Center(child: InkWell(
         onTap: (){
           pickdate(context);
         },
         child: Text("Click"))),
    );
  }
}
