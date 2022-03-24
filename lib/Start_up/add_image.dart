import 'dart:io';
import 'dart:ui';
import 'package:bongalo/Start_up/place_name.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Add_Image extends StatefulWidget {
  static const routename="Add_Image";


  @override
  _Add_ImageState createState() => _Add_ImageState();
}

class _Add_ImageState extends State<Add_Image> {
  bool create_newlist = false;
  bool duplicate = false;
  bool select_item = false;
  File? _file;
  Future<void> pickimage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();

      setState(() {
        _file = files.first;
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height * 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.35,
                width: width * 1,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  gradient: new LinearGradient(
                    colors: [
                      Color.fromRGBO(191, 100, 255, 1),
                      Color.fromRGBO(600, 100, 252, 1)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.close, color: Colors.white),
                          Text(
                            "Help",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.05),
                        child: Text(
                          "Weldone! Lets add some images of your place",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              _file == null
                  ? Text("")
                  : ListTile(
                      title: Text(
                        "Add at least 10 photos ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      subtitle: Text(
                        "Drag to re-arrange",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(107, 107, 117, 1),
                            fontSize: 14),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          pickimage();
                        },
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Upload Photos",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )),
                        ),
                      ),
                    ),
              if (_file == null)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  height: height * 0.3,
                  width: width * 1,
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            pickimage();
                          },
                          child: SvgPicture.asset('images/dragimage.svg')),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "Drag Image here",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Add up to 7 photos at least",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(107, 107, 117, 1),
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Upload from your device",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    ],
                  ),
                )
              else
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      height: height * 0.3,
                      width: width * 1,
                      margin:
                          EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.file(
                            _file!,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            bottom: 15,
                            left: 5,
                            child: Container(
                              height: height * 0.05,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                "Upload Photos",
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              )),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 15,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.025,),
                    Row(

                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          height: height * 0.2,
                          width: width * 0.35,
                          alignment: Alignment.center,
                          margin:
                          EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    pickimage();
                                  },
                                  child: SvgPicture.asset('images/dragimage.svg')),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          height: height * 0.2,
                          width: width * 0.35,
                          alignment: Alignment.center,

                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    pickimage();
                                  },
                                  child: SvgPicture.asset('images/dragimage.svg')),

                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              SizedBox(
                height: height * 0.03,
              ),

            _file==null?
              Container(
                  margin: EdgeInsets.only(
                      left: width * 0.025, right: width * 0.025),
                  child: Text(
                    "Photos help your guests to have a virtual feeling while imagining staying at your place. You can add minimum of ten photos. Note: Each image should not exceed 2mb in size. Accepted file types are; png, jpg and jpeg.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(107, 107, 117, 1),
                        fontSize: 14),
                  )):Text(""),
            ],
          ),
        ),
      ),
      bottomNavigationBar: (_file != null)
          ? Container(
              height: height * 0.11,
              width: width * 1,
              color: Colors.white,
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text("Back")),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Place_Name.routename);
                    },
                    child: Container(
                      height: height*0.06,
                      width: width*0.2,

                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                ],
              ),
            )
          : Text(""),
    );
  }
}
