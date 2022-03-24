import 'package:bongalo/screen/verify_via_email.dart';
import 'package:flutter/material.dart';
class Forget_Password extends StatefulWidget {
  static const routename="Forget_Password";
  @override
  State<Forget_Password> createState() => _Forget_PasswordState();
}

class _Forget_PasswordState extends State<Forget_Password> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  String? email='';

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("Forgot my Password",style: TextStyle(fontFamily: 'Inter-Regular',fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff404040)),)),

          SizedBox(height: height*0.01,),
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Enter email to get a password reset link',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff6B6B75),fontSize: 14,fontFamily: 'Inter-Regular'),)),

          SizedBox(height: height*0.05,),

          Form(
              key:_formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(

                  height:
                  MediaQuery.of(context).size.height * 0.13,
                  child: ListView(
                    children: [

                      //Email
                      Container(
                        height: height*0.055,
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                        decoration: BoxDecoration(
                            color: Color(0xffF8FAFC),
                            border: Border.all(color: Color(0xffE2E8F0)),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Email ',
                                border: InputBorder.none,
                                hintStyle:  TextStyle(
                                    color: Color(0xff9099A6),
                                    fontFamily: 'Inter-Regular',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14)
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




                      SizedBox(height: height*0.02,),



                    ],

                  ),
                ),
              )),

          (email!.isEmpty)?
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            height: height*0.055,
            width: width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(60, 133, 255, 0.4),
            ),

            child: Center(child: Text("Log in",style: TextStyle(color: Colors.white),)),
          ):

          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Verify_via_Email.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Log in",style: TextStyle(color: Colors.white),)),
            ),
          ),

          SizedBox(height: height*0.04,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not account?"),
              Text(" Create one",style: TextStyle(color: Color(0xff3C85FF)),)
            ],
          )
        ],
      ),
    );
  }
}
