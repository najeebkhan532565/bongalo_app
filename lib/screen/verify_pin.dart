import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Verify_Pin extends StatefulWidget {
  static const routename="Verify_Pin";
  @override
  State<Verify_Pin> createState() => _Verify_PinState();
}

class _Verify_PinState extends State<Verify_Pin> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController controller = TextEditingController(text: "");
  String thisText = "";
  int pinLength = 6;
  bool hasError = false;
  String ? errorMessage;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  bool isloading=false;
  bool is_register=false;
  bool visibilty=true;
  bool completed=false;
  String pincode='';
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: width*0.13,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: SvgPicture.asset('images/back.svg')),
        ),
      ),
      body: ListView(

        children: [
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff404040)),)),

          SizedBox(height: height*0.01,),
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Enter a verification code sent to 08030666152',style: TextStyle(color: Color(0xff6B6B75)),)),

          SizedBox(height: height*0.05,),
          Center(
            child: Container(
              // margin: EdgeInsets.only(left: width*0.025,right: width*0.025),
              child: Form (

                key: _formKey,
                child: Container(

                  // margin: EdgeInsets.only(left: width*0.05,right: width*0.05),

                  // child: PinCodeTextField(
                  //   appContext: context, length: 6,onChanged: (value){
                  //   print(value);
                  // },
                  //   onTap:(){
                  //     setState(() {
                  //       pincode=(textEditingController.text) as String;
                  //     });
                  //   } ,
                  //   onCompleted: (value){
                  //   setState(() {
                  //     completed=true;
                  //     pincode=(textEditingController.text) as String;
                  //
                  //
                  //   });
                  // },
                  //   boxShadows:
                  //
                  //   textEditingController.text.isEmpty?   [
                  //   BoxShadow(
                  //       color: Colors.white
                  //   ),
                  //   BoxShadow(
                  //       color: Colors.white
                  //   )
                  //
                  //   ]:
                  //   [
                  //     BoxShadow(
                  //         color: Color(0xffF4F8FF)
                  //     ),
                  //     BoxShadow(
                  //         color: Color(0xffF4F8FF)
                  //     )
                  //
                  //   ],
                  //
                  //   onAutoFillDisposeAction: AutofillContextAction.cancel,
                  //   controller: textEditingController,
                  //   autoDisposeControllers: true,
                  //   cursorColor: Colors.black,
                  //   animationType: AnimationType.scale,
                  //   textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                  //
                  //   keyboardType: TextInputType.number,
                  //
                  //   pinTheme: PinTheme(
                  //       shape: PinCodeFieldShape.box,
                  //       borderRadius: BorderRadius.circular(10),
                  //       // fieldHeight: height*0.08,
                  //     fieldHeight: height*0.055,
                  //       fieldWidth: width*0.115,
                  //       borderWidth: 0.5,
                  //       activeColor: Color(0xff3C85FF),
                  //       selectedColor: Color(0xff3C85FF),
                  //       inactiveFillColor: Colors.black,
                  //       disabledColor: Colors.black,
                  //       activeFillColor: Color(0xff3C85FF),
                  //       inactiveColor: Color(0xff3C85FF),
                  //   ),
                  // ),
                  child: PinCodeTextField(
                    autofocus: true,
                    controller: controller,
                    hideCharacter: false,
                    // hideCharacter: true,
                    // highlight: true,
                    highlightColor: Colors.blue,
                    defaultBorderColor: Colors.black.withOpacity(0.1),
                    hasTextBorderColor: Colors.blue,
                    highlightPinBoxColor: Color(0xffF4F8FF),
                    maxLength: pinLength,
                    hasError: hasError,
                    onTextChanged: (text) {
                      setState(() {
                        hasError = false;
                      });
                    },
                    onDone: (text) {

                          completed=true;
                          pincode=(controller.text) as String;

                          Navigator.of(context).pushNamed(Success.routename);
                      print("DONE $text");
                      print("DONE CONTROLLER ${controller.text}");
                    },

                    pinBoxWidth: width*0.115,
                    pinBoxHeight: height*0.055,
                    pinBoxBorderWidth: 0.7,
                    hasUnderline: false,
                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                    pinBoxRadius: 10,
                    pinTextStyle: getstyle(12, FontWeight.w400),
                    pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                    pinTextAnimatedSwitcherDuration:
                    Duration(milliseconds: 300),
//                    highlightAnimation: true,
                    highlightAnimationBeginColor: Colors.black,
                    highlightAnimationEndColor: Colors.white12,
                    keyboardType: TextInputType.number,
                  ),

                ),
              ),
            ),
          ),
          SizedBox(height: height*0.04,),

          controller.text.isNotEmpty?Text(""):
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Did't get Code?",style: TextStyle(fontSize: 12),),
              Text(" Resend",style: TextStyle(color: Color(0xff3C85FF),fontSize: 12),)
            ],
          ),
          SizedBox(height: height*0.04,),

          controller.text.isNotEmpty?Text(""):
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Resend Code in",style: TextStyle(fontSize: 12),),
              Text(" 00:55",style: TextStyle(color: Color(0xff3C85FF),fontSize: 12),)
            ],
          ),

          SizedBox(height: height*0.05,),

        ],

      ),
    );
  }
}
