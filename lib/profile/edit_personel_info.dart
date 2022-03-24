import 'dart:ui';
import 'package:bongalo/module/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Edit_Personel_info extends StatefulWidget {
  static const routename="Edit_Personel_info";

  @override
  _Edit_Personel_infoState createState() => _Edit_Personel_infoState();
}

class _Edit_Personel_infoState extends State<Edit_Personel_info> {
  bool select_item=false;
  bool passport=false;
  bool license=false;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xfff3f3f3),
        foregroundColor: Colors.black,
        title:  Text(" Edit Personal info",style: getLightBlackstyle(16, FontWeight.w600),),
      ),

      body: ListView(

        children: [
          SizedBox(height: height*0.02,),

          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextFormField(
                initialValue: "Lukman Suleiman",
                style: getBlackStyle(14, FontWeight.w400),
                decoration: InputDecoration(
                    hintText: " Name"
                    ,
                    border: InputBorder.none,
                  hintStyle: getBlackStyle(14, FontWeight.w400)
                ),
              )),
          SizedBox(height: height*0.025,),

          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child:TextFormField(
                initialValue: "Lukman Suleiman",
                style: getBlackStyle(14, FontWeight.w400),
                decoration: InputDecoration(
                    hintText: " DOB"
                    ,  hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.025,),

          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextFormField(
                initialValue: "lsuleiman@bongalo.co",
                style: getBlackStyle(14, FontWeight.w400),
                decoration: InputDecoration(
                    hintText: " Email"
                    ,
                    hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),


          SizedBox(height: height*0.02,),

          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child:TextFormField(
initialValue: "+234803  066 6152",
                style: getBlackStyle(14, FontWeight.w400),
                decoration: InputDecoration(
                    hintText: " Phone no"
                    ,
                    suffixIcon: Container(
                      width: width*0.1,

                        height: height*0.02,
                        child: Center(child: Text("Edit",style: getbluestyle(14, FontWeight.w400),))),
                    hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.02,),
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child:TextFormField(

                style: getBlackStyle(14, FontWeight.w400),
                decoration: InputDecoration(
                    hintText: " Verfication ID"
                    ,
                    suffixIcon: Container(
                        width: width*0.1,

                        height: height*0.02,
                        child: Center(child: Text("Add",style: getbluestyle(14, FontWeight.w400),))),
                    hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.05,),

//KIN
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color:  Color(0xffebeff5),


              ),
              alignment: Alignment.center,
              child: Text("Next of KIN Details")),
          SizedBox(height: height*0.05,),
//name
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: " Name"
                    ,
                    hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.025,),
//dob
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: " DOB"
                    , hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),
          SizedBox(height: height*0.025,),
//relationship
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Relationship"
                    , hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),


          SizedBox(height: height*0.02,),
          //email
          Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: select_item ? Colors.blue : Colors.grey,
                      width: 0.5)),
              padding: EdgeInsets.only(left: width * 0.025),
              margin:
              EdgeInsets.only(left: width * 0.05, right: width * 0.05),

              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    hintText: " Email"
                    , hintStyle: getBlackStyle(14, FontWeight.w400),
                    border: InputBorder.none
                ),
              )),

          SizedBox(height: height*0.02,),
          //phone no
          Container(
            height: height * 0.07,
            width: width * 1,
            decoration: BoxDecoration(
                color: select_item ? Color(0xfff4f8ff) : Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: select_item ? Colors.blue : Colors.grey,
                    width: 0.5)),
            padding: EdgeInsets.only(left: width * 0.025),
            margin:
            EdgeInsets.only(left: width * 0.05, right: width * 0.05),

            alignment: Alignment.centerLeft,
            child: ListView(
              children: [
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    setState(() {

                    });
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  spaceBetweenSelectorAndTextField: 0,
                  selectorConfig: SelectorConfig(
                      showFlags: true,
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                      leadingPadding: width*0.02
                  ),
                  ignoreBlank: false,

                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black,),

                  formatInput: false,
                  maxLength: 9,
                  keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
                  cursorColor: Colors.black,
                  inputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.05,),



          //update pass

          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),
            ),
          )




        ],
      ),

    );
  }
}
