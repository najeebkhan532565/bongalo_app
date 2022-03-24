import 'package:bongalo/screen/success.dart';
import 'package:flutter/material.dart';
class Password_Reset extends StatefulWidget {
  static const routename="Password_Reset";
  @override
  State<Password_Reset> createState() => _Password_ResetState();
}

class _Password_ResetState extends State<Password_Reset> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  String? pass='';
  String ? confirmpass='';
bool show=false;
bool confimshow=false;

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
              child: Text("Password reset",style: TextStyle(fontFamily: 'Inter-Regular',fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff404040)),)),

          SizedBox(height: height*0.01,),
          Container(
              margin:EdgeInsets.only(left:width*0.05) ,
              child: Text('Set your new password ',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff6B6B75),fontSize: 14,fontFamily: 'Inter-Regular'),)),

          SizedBox(height: height*0.05,),

          Form(
              key:_formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(

                  height:
                  MediaQuery.of(context).size.height * 0.3,
                  child: ListView(
                    children: [

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
                        alignment: Alignment.centerLeft
                        ,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            onChanged: (value){
                              setState(() {
                                confirmpass=value;
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

          (pass!.isEmpty || confirmpass!.isEmpty)?
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            height: height*0.055,
            width: width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(60, 133, 255, 0.4),
            ),

            child: Center(child: Text("Save Password",style: TextStyle(color: Colors.white),)),
          ):

          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Success.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.055,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Save Password",style: TextStyle(color: Colors.white),)),
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
