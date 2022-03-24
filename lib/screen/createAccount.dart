import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/verify.dart';
import 'package:bongalo/screen/verify_pin.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CreateAccount extends StatefulWidget {
  static const routename="CreateAccount";
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController controller = TextEditingController();bool show=false;
  bool checked=false;
String ? name='';
String ? email='';
String ? pass='';
String ? confirm_pass='';
String ? phone='';
@override
  void dispose() {
    // TODO: implement dispose
  controller.dispose();
    super.dispose();
  }
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
              child: Text("Lets get to know you",
                style: TextStyle(color: Color(0xff404040),fontFamily: 'Inter-Regular',fontSize: 30,fontWeight: FontWeight.w700),)),

          SizedBox(height: height*0.01,),

          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Create an account and unlock a new experience.',
    style: TextStyle(color: Color(0xff6B6B75),fontFamily: 'Inter-Regular',fontSize: 14,fontWeight: FontWeight.w400),

    )

          ),

          SizedBox(height: height*0.05,),

          Form(
              key:_formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(

                  height:
                  MediaQuery.of(context).size.height * 0.37,
                  child: ListView(
                    children: [
                      //name
                      Container(
                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            style: TextStyle(

                              color: Color(0xff404040),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter-Regular',

                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter full name ',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color(0xff9099A6),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                            keyboardType:
                            TextInputType.emailAddress,

                            onChanged: (value){
setState(() {
  name=value;
});
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'invalid';
                              }
                              return null;

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.02,),
                      //Email

                      Container(
                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,

                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter email ',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color(0xff9099A6),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                            keyboardType:
                            TextInputType.emailAddress,

                            onChanged: (value){
                              setState(() {
                                email=value;
                              });
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'invalid';
                              }
                              return null;

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.02,),

                      //phone
//                       Container(
//                         height: height*0.055,
//                         margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
//                         decoration: BoxDecoration(
//                             color: Colors.blue,
//                             border: Border.all(color: Color(0xffE2E8F0)),
//                             borderRadius: BorderRadius.circular(8)
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: width*0.3,
//                               child: CountryCodePicker(
//                                 initialSelection: 'US',
//                                 showFlag: true,
//                                 showFlagMain: true,
//                                 textStyle: TextStyle(color: Colors.white),
//                                 showDropDownButton: true,
//                               ),
//                             ),
//                             Expanded(
//                               flex: 5,
//                               child: Container(
//                                 padding: EdgeInsets.only(left: width*0.03),
//                                 color: Colors.white,
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Phone number ',
//                                     border: InputBorder.none,
//                                     hintStyle: TextStyle(
//                                         color: Color(0xffABA5A5),
//                                         fontFamily: 'ProximaNova-Regular',
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 14.51),
//                                   ),
//                                   keyboardType:
//                                   TextInputType.phone,
//
//                                   onChanged: (value){
//                                     setState(() {
// phone=value;
//                                     });
//                                   },
//
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
                      Container(
                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,

                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(8)
                        ),
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

                      SizedBox(height: height*0.02,),

                      //pass
                      Container(
                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,

                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(

                            onChanged: (value){
                              setState(() {
                                pass=value;
                              });
                            },
                            obscureText: show,
                            decoration: InputDecoration(
                              hintText: 'Enter password ',
                              suffixIcon: show?InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child  : Icon(Icons.visibility_off_outlined,size: 16,color: Color(0xff9099A6),)):InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child: Icon(Icons.visibility_outlined,size: 16,color: Color(0xff9099A6),)),
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color(0xff9099A6),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                            keyboardType:
                            TextInputType.emailAddress,


                            validator: (value){
                              if(value!.isEmpty){
                                return 'invalid';
                              }
                              return null;

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.02,),

                      //pass
                      Container(

                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Colors.white,

                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            onChanged: (value){
                              setState(() {
                                confirm_pass=value;
                              });
                            },
                            obscureText: show,
                            decoration: InputDecoration(
                              hintText: 'Confirm password ',
                              suffixIcon: show?InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child  : Icon(Icons.visibility_off_outlined,size: 16,color: Color(0xff9099A6),)):InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child: Icon(Icons.visibility_outlined,size: 16,color: Color(0xff9099A6),)),
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color(0xff9099A6),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                            keyboardType:
                            TextInputType.emailAddress,


                            validator: (value){
                              if(value!.isEmpty){
                                return 'invalid';
                              }
                              return null;

                            },
                          ),
                        ),
                      ),

                    ],

                  ),
                ),
              )),

          Container(
            margin: EdgeInsets.only(left: width*0.025),
            child: Row(
              children: [

                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),

                  side: BorderSide(color: Color(0xff3C85FF),width: 1.5),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                    value: checked, onChanged: (val){
                    setState(() {
                      checked=val!;
                      },
                  );
                },
                ),

                Text("I agree to the ",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0, 0, 0, 0.6)),),
                Text("Terms of Service ",style: TextStyle(color: Color(0xff3C85FF),fontSize: 12),),
                Text('and ',style: TextStyle(fontSize: 12,color: Color.fromRGBO(0, 0, 0, 0.6))),
                Text("Privacy Policy",style: TextStyle(fontSize: 12,color: Color(0xff3C85FF)),)

              ],
            ),
          ),

          SizedBox(height: height*0.04,),

          (email!.isEmpty || name!.isEmpty || pass!.isEmpty || controller.text.isEmpty || confirm_pass!.isEmpty || checked==false)?

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            height: height*0.065,
            width: width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(60, 133, 255, 0.4),
            ),

            child: Center(child: Text("Create account",style: getwhitestyle(14, FontWeight.w700))),
          ):

          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Verify_Pin.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Create account",style: getwhitestyle(14, FontWeight.w700))),
            ),
          ),

          SizedBox(height: height*0.04,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already a member?"),
              Text(" Log in",style: TextStyle(color: Color(0xff3C85FF)),)
            ],
          )

        ],

      ),
    );
  }
}
