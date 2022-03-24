import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/google_login.dart';
import 'package:bongalo/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Login extends StatefulWidget {
  static const routename="Login";


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String ? name='';
  String ? email='';
  String ? pass='';
  bool  show=false;
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
      body: ListView(
        children: [
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text("Welcome to Bongalo",style: TextStyle(fontFamily: 'Inter-Regular',fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff404040)),)),

          SizedBox(height: height*0.01,),
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Kindly provide us with your login details.',
                style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff6B6B75),fontSize: 14,fontFamily: 'Inter-Regular'),

              )),

          SizedBox(height: height*0.04,),

          Form(

              key:_formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(

                  height:
                  MediaQuery.of(context).size.height * 0.35,
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


                      //pass
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

                            onChanged: (value){
                              setState(() {
                                pass=value;
                              });
                            },
                            obscureText: show,
                            decoration: InputDecoration(
                              hintText: 'Password ',
                              suffixIcon: show?InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child  : Icon(Icons.visibility_off,size: 16,color: Color(0xff9099A6),)):InkWell(
                                  onTap: (){
                                    setState(() {
                                      show=!show;
                                    });

                                  },
                                  child: Icon(Icons.visibility,size: 16,color: Color(0xff9099A6),)),
                              border: InputBorder.none,
                              hintStyle:  TextStyle(
                                  color: Color(0xff9099A6),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14)
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
                      SizedBox(height: height*0.04,),
                      (email!.isEmpty  || pass!.isEmpty )?
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
                          Navigator.of(context).pushNamed(Explore.routename);
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

                    ],

                  ),
                ),
              )),
          SizedBox(height: height*0.05,),
          Container(
            height: height*0.055,
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(color: Color(0xff3C85FF),),
                borderRadius: BorderRadius.circular(15)
            ),


            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.apple,color: Colors.black,),

                Text(
                  'Log in with Apple',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ProximaNova-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.51,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Google_Log_in.routename);
            },
            child: Container(
              height: height*0.055,

              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff3C85FF))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.google,color: Colors.red,),

                  Text(
                    'Log in with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ProximaNova-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.51,

                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.04,),
          Container(
            height: height*0.055,

            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xff3C85FF))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.facebook,color: Color(0xff3C85FF)),

                Text(
                  'Log in with Google',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ProximaNova-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.51,

                  ),
                ),
              ],
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
