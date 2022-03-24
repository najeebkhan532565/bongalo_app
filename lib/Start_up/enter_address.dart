import 'package:bongalo/Start_up/location.dart';
import 'package:bongalo/Start_up/payout2.dart';
import 'package:bongalo/host/host_pay_out_method.dart';
import 'package:bongalo/module/color.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Enter_Address extends StatefulWidget {
  static const routename="Enter_Address";
  @override
  State<Enter_Address> createState() => _Enter_AddressState();
}

class _Enter_AddressState extends State<Enter_Address> {
  bool select_item = false;
  final TextEditingController controller = TextEditingController();bool show=false;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  String? select_method="Nigeria";
  String? city='';
  String loca='';

  List<String> payout_method = ["Nigeria", "Pakistan"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Color(0xfff5f5f5),
        title: Text(
          "Enter your address",
          style: TextStyle(fontSize: 18, color: Color.fromRGBO(64, 64, 64, 1)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.07,
            width: width * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff9099A6), width: 0.5)),
            padding: EdgeInsets.only(left: width * 0.025),
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: DropdownButton(
              hint: Text(
                "Select Country",
                style: getLightBlackstyle(14, FontWeight.w400),
              ),
              alignment: Alignment.centerLeft,
              value: select_method,
              style: getLightBlackstyle(14, FontWeight.w400),
              onChanged: (value) {
                setState(() {
                  select_method = value.toString();
                });
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.expand_less),
              ),
              menuMaxHeight: MediaQuery.of(context).size.height * 0.5,
              isExpanded: true,
              underline: Container(color: Colors.transparent),
              items: payout_method
                  .map((e) =>
                  DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
          ),

               Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              SizedBox(
                height: height * 0.02,
              ),

              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff9099A6), width: 0.5)),
                  padding: EdgeInsets.only(left: width * 0.025),
                  margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                  alignment: Alignment.centerLeft,
                  child: TextField(
                    style: get5SStyle(15, FontWeight.w500),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:"City/Town",
                  ),
                    onChanged: (val){
                      setState(() {
                        city=val;
                      });
                    },
                  )),
              SizedBox(
                height: height * 0.02,
              ),

              Container(
                  height: height * 0.07,
                  width: width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff9099A6), width: 0.5)),
                  padding: EdgeInsets.only(left: width * 0.025),
                  margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),

                  alignment: Alignment.centerLeft,
                  child: TextField(
                    style: get5SStyle(15, FontWeight.w500),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"Precise location",
                    ),
                    onChanged: (val){
                      setState(() {
                        loca=val;
                      });
                    },
                  )),

              SizedBox(
                height: height * 0.02,
              ),

              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.01),
                child: RichText(
                  text: TextSpan(
                    text: 'We’ll only share your address with guests who are booked as stated in our. ',
                    style: get_default_text_in_field(12, FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(text: 'privacy policy', style: getstyle(12, FontWeight.w400)),
                    ],
                  ),
                ),
              ),


              SizedBox(height: height*0.07,),
              (loca.isEmpty || city!.isEmpty||  select_method!.isEmpty)?
              Container(

                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                height: height*0.055,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(60, 133, 255, 0.4),
                ),

                child: Center(child: Text("Done",style: TextStyle(color: Colors.white),)),
              ):
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Location_Screen.routename,arguments: select_method.toString()+" "+city.toString()+" "+loca.toString());
                },
                child: Container(
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  height: height*0.055,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3C85FF),
                  ),

                  child: Center(child: Text("Done",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
