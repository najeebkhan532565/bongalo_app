import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/explore.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/search_result.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:bongalo/screen/wishlist_detail.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:flutter/material.dart';
class Wishlist extends StatefulWidget {
  static const routename="Wishlist";

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
bool status=true;

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Wishlist"),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      ),

      body:
status?
    ListView(
      children:List.generate(4, (index) => InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(Wishlist_Detail.routename);
        },
        child: Container(
          margin: EdgeInsets.only(top: height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  margin: EdgeInsets.only(left: width*0.025),

                  child: Row(
                    children: [
                      Container(
                        width: width*0.56,
                        height: height*0.25,
                        decoration: BoxDecoration(

                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.qLVYj_t-HU2Yyx3v_wFgLwHaE6&pid=Api&P=0&w=274&h=182")
                          ),
                        ),

                      ),
                      Column(
                        children: [
                          Container(
                            width: width*0.4,
                            height: height*0.125,
                            decoration: BoxDecoration(

                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.qLVYj_t-HU2Yyx3v_wFgLwHaE6&pid=Api&P=0&w=274&h=182")
                              ),
                            ),

                          ),
                          Container(
                            width: width*0.4,
                            height: height*0.125,
                            decoration: BoxDecoration(

                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.qLVYj_t-HU2Yyx3v_wFgLwHaE6&pid=Api&P=0&w=274&h=182")
                              ),
                            ),

                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.01,),
              Container(
                  margin: EdgeInsets.only(left: width*0.05),
                  child: Text("Kigali Trip",style: getLightBlackstyle(16, FontWeight.w600),)),
              SizedBox(height: height*0.01,),
              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("27 Nov - 6 Dec",style: getsecondry(14, FontWeight.w400),),
                    SizedBox(height: height*0.01,),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05),
                      child: Row(
                        children: [
                          Image.asset('images/homesumall.png'),
                          SizedBox(width: width*0.02,),
                          Text("3",style: getsecondry(14, FontWeight.w400),)
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ))
    )
    :

      Column(
        children: [
          SizedBox(height: height*0.05,),
          Container(
              width: width*0.9,
              margin:EdgeInsets.only(left:width*0.05,) ,
              child: Text('Wishlist will appear once you start liking spaces for a particular trip or vacation. Tap the heart icon to like a space.',style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 14,
                  fontFamily: 'Inter-Regular',
                  fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              )),

          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
             setState(() {
               status=true;
             });
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.065,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3C85FF),
              ),

              child: Center(child: Text("Explore Bongalo",style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],
      ),
    bottomNavigationBar: Bottom_Nav(),
    floatingActionButton: status? CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 25,
      child: Icon(Icons.add,color: Colors.white,size: 25,),
    ):Text(""),
    );
  }
}
