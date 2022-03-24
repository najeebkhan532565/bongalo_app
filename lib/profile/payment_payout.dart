import 'package:bongalo/Start_up/payout2.dart';
import 'package:bongalo/host/host_pay_out_method.dart';
import 'package:bongalo/module/color.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Payment_Payout extends StatefulWidget {
  static const routename="Payment_Payout";
  @override
  State<Payment_Payout> createState() => _Payment_PayoutState();
}

class _Payment_PayoutState extends State<Payment_Payout> {
  bool select_item = false;
  final TextEditingController controller = TextEditingController();bool show=false;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  String? select_method;
  String? select_operator;

  List<String> payout_method = ["bank Transfer", "Mobile Money"];
  List<String> operator = ["MTN", "MTN2"];
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
          "Payout method",
          style: TextStyle(fontSize: 18, color: Color.fromRGBO(64, 64, 64, 1)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "Payout Method",
              style: TextStyle(color: Color(0xff9099A6), fontSize: 14),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.07,
            width: width * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff9099A6), width: 1)),
            padding: EdgeInsets.only(left: width * 0.025),
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: DropdownButton(
              hint: Text(
                "Select Payment Method",
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
          select_method == null
              ? Text("")
              : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Text(
                        "Select Operator",
                        style:
                        getLightBlackstyle(14, FontWeight.w400),
                      ),
                    ),

                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff9099A6), width: 1)),
                      padding: EdgeInsets.only(left: width * 0.025),
                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                      child: DropdownButton(
                        hint: Text(
                          "Select Payment Method",
                          style: getLightBlackstyle(14, FontWeight.w400),
                        ),
                        alignment: Alignment.centerLeft,
                        value: select_operator,
                        style: getLightBlackstyle(14, FontWeight.w400),
                        onChanged: (value) {
                          setState(() {
                            select_operator = value.toString();
                          });
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Icon(Icons.expand_less),
                        ),
                        menuMaxHeight: MediaQuery.of(context).size.height * 0.5,
                        isExpanded: true,
                        underline: Container(color: Colors.transparent),
                        items: operator
                            .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.toString())))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Text(
                        "Phone number",
                        style:
                        TextStyle(color: Color(0xff9099A6), fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff9099A6), width: 1)),

                      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
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
                            textFieldController: controller,
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
                    SizedBox(height: height*0.07,),
                    (select_method==null || select_operator==null || controller.text.isEmpty)?Text(""):
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(Host_Bank__Payout_Method.routename);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        height: height*0.055,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff3C85FF),
                        ),

                        child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
