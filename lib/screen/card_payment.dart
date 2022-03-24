import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/payment_success.dart';
import 'package:bongalo/screen/success.dart';
import 'package:flutter/material.dart';

class Card_Payment extends StatefulWidget {
  static const routename="Card_Payment";

  @override
  State<Card_Payment> createState() => _Card_PaymentState();
}

class _Card_PaymentState extends State<Card_Payment> {
  String ? title;
  String ? country;

  List countries=["PAK","IND","WEST"];
  List mylist=["Mobile Money"];

  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Confirm and Pay",style:  TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(64, 64, 64, 1),
            fontSize: 16,
            fontFamily: 'Inter-Regular'),),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),
      body: Container(
        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
        child: ListView(
          children: [

            Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Container(

                  child: Row(
                    children: [
                      Container(
                        width: width * 0.35,
                        height: height * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://tse3.mm.bing.net/th?id=OIP.7B1xLGS4Inj8JFFXBsHWmwHaE9&pid=Api&P=0&w=233&h=156"))),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Private Room in Rubavu in Kigali",
                              style: getsecondry(10, FontWeight.w400)),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text("Anastasia's Paradise",
                              style: getLightBlackstyle(12, FontWeight.w400)),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffF3CE6D),
                                size: 12,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "4.8 (30 Reviews)",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9,
                                    fontFamily: 'Inter-Light'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: height * 0.017,
                                  child: Image.asset('images/Bedroom.png')),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text(
                                "1 rooms",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    fontFamily: 'Inter-Light'),
                              ),
                              SizedBox(
                                width: width * 0.08,
                              ),
                              Container(
                                  height: height * 0.017,
                                  child: Image.asset('images/Bathroom.png')),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text(
                                "2 baths",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 107, 117, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    fontFamily: 'Inter-Light'),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Trip info",
              style: getLightBlackstyle(12, FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Dates",
              style: getLightBlackstyle(10, FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Wed, Oct 2 - Fri, Oct 26",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontSize: 10,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Guests",
              style: getLightBlackstyle(10, FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "1 guest",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontSize: 12,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
                height: height * 0.02
            ),
            Text(
              "Price info",
              style: getLightBlackstyle(10, FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$97 x 25 nights",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$ 2230",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service charge",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$ 45",
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 12,
                        fontFamily: 'Inter-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: getLightBlackstyle(13, FontWeight.w500),
                  ),
                  Text(
                    "\$ 433",
                    style: getLightBlackstyle(13, FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),


            Text("Select payment method",
                style: getLightBlackstyle(13, FontWeight.w500),
                ),

            SizedBox(
              height: height * 0.02,
            ),

            Text("Payment method",
              style: get_default_text_in_field(14, FontWeight.w400),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            Container(

              height: height*0.06,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black,width: 0.5)
              ),
              padding: const EdgeInsets.only(left: 10,top: 5,right: 10),
              child: DropdownButton(
                hint: Text(
                  "Credit or debit card"
                  ,style:
                TextStyle(
                    color: Color(0xff404040),
                    fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular'),
                ),
                alignment: Alignment.center,
                value:title,
                style:
                TextStyle(
                    color: Color(0xff404040),
                    fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular'),
                onChanged: (value) {
                  setState(() {
                    title=value.toString();
                  });


                },
                icon: Icon(Icons.keyboard_arrow_up,size: 25,color: Color(0xff404040)),
                menuMaxHeight:
                MediaQuery.of(context).size.height * 0.5,
                isExpanded: true,
                underline: Container(color: Colors.transparent),
                items: mylist
                    .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.toString())))
                    .toList(),
              ),
            ),


            //country
            SizedBox(
              height: height * 0.02,
            ),

            Text("Country",style:  TextStyle(
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(144, 153, 166, 1),
                fontSize: 14,
                fontFamily: 'Inter-Regular'),),

            SizedBox(
              height: height * 0.02,
            ),
            Container(

              height: height*0.06,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black,width: 0.5)
              ),
              padding: const EdgeInsets.only(left: 10,top: 5,right: 10),
              child: DropdownButton(
                hint: Text(
                  "Country"
                  ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular'),
                ),
                alignment: Alignment.center,
                value:country,
                style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter-Regular',color: Color(0xff404040)),

                onChanged: (value) {
                  setState(() {
                    country=value.toString();
                  });


                },
                icon: Icon(Icons.keyboard_arrow_up,size: 25,color: Color(0xff404040)),
                menuMaxHeight:
                MediaQuery.of(context).size.height * 0.5,
                isExpanded: true,
                underline: Container(color: Colors.transparent),
                items: countries
                    .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.toString())))
                    .toList(),
              ),
            ),





            SizedBox(
              height: height * 0.02,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Payment_Success.routename);
              },
              child: Container(

                height: height*0.065,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff3C85FF),
                ),

                child: Center(child: Text("Continue",style: getwhitestyle(14, FontWeight.w700),)),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
