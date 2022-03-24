import 'dart:ui';
import 'package:bongalo/Start_up/amminities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Who_Coming extends StatefulWidget {
  static const routename="Who_Coming";
  @override
  _Who_ComingState createState() => _Who_ComingState();
}

class _Who_ComingState extends State<Who_Coming> {
  bool create_newlist = false;
  bool duplicate = false;
  int adults=0;
  int children=0;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(onPressed: (){

            Navigator.of(context).pop();
        },icon: Icon(Icons.close,color: Colors.black,size: 20,),),
        elevation: 0,
        title: Text("Who's Coming",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height*1.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                title: Text(
                  "Adults",),
                subtitle: Text("Ages 18 or above"),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      InkWell(
                        onTap: (){
                          if(adults>0){
                            setState(() {
                              adults--;
                            });
                          }

                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:adults>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: adults>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(adults.toString()),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            adults++;
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Children",
                ),
                subtitle: Text("Ages 2 or above"),
                trailing: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      InkWell(
                        onTap: (){
                          if(children>0){
                            setState(() {
                              children--;
                            });
                          }

                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:children>0?Colors.black: Color.fromRGBO(204, 204, 204, 1),),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: children>0?Colors.black:Color.fromRGBO(204, 204, 204, 1),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Text(children.toString()),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            children++;
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: (adults>0  || children>0)
          ? InkWell(
        onTap: (){
          Navigator.pop(context,adults+children);
        },
            child: Container(

        height: height * 0.07,
        width: width * 1,

        decoration: BoxDecoration(
              color: Colors.blue,
            borderRadius: BorderRadius.circular(15)
        ),
        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05,bottom: height*0.02),
        child: Center(
              child: Text(
                "Apply",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
      ),
          )
          : Text(""),
    );
  }
}
