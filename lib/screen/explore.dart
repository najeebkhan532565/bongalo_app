import 'package:bongalo/Start_up/FAQ.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/welcome.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:bongalo/module/post.dart';
import 'package:bongalo/module/search.dart';

import 'package:bongalo/widgets/featured.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  static const routename = "Explore";

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {



  List<Post> myposts = [
    Post(
        image:
            'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        title: 'Kigali',
        price: "500"),
    Post(
        price: "200",
        title: 'Yamonde',
        image:
            'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
    Post(
        image:
            'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        title: "Private in Rubav",
        price: "800"),
    Post(
        title: "Private room in Dubai",
        price: "1200",
        image:
            "https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
    Post(
        image:
            'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        title: "Private in Rubav",
        price: "800"),
    Post(
        title: "Private room in Dubai",
        price: "1200",
        image:
            "https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
    Post(
        image:
            'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        title: "Private in Rubav",
        price: "800"),
    Post(
        title: "Private room in Dubai",
        price: "1200",
        image:
            "https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
  ];


@override
  void initState() {
    // TODO: implement initState
  current_index=0;
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.45,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: height * 0.45,
                      width: width * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/image 7.png'))),
                    ),
                    Container(
                      height: height * 0.4,
                      width: width * 1,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: width * 0.74,
                            child: Text(
                              'Book a head your next trip or location',
                              style: getwhitestyle(24, FontWeight.w700),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: width * 0.85,
                          height: height * 0.05,
                          child: TextField(
                              onTap: () {
                                showSearch(
                                    context: context, delegate: Search_Bike());
                              },
                              decoration: InputDecoration(
                                  hintText: "Where are you going?",
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.blue,
                                  ))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  child: Text(
                    "Explore property types",
                    style: getLightBlackstyle(16, FontWeight.w600),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myposts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          myposts[index].image.toString()))),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: width * 0.025),
                                child: Text(
                                  myposts[index].title.toString(),
                                  style: getLightBlackstyle(14, FontWeight.w500),
                                ))
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  child: Text(
                    "Love by guest",
                    style: getLightBlackstyle(16, FontWeight.w600),
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        myposts.length,
                            (index) => Container(
                          height: height * 0.4,
                          width: width * 0.65,
                          margin: EdgeInsets.only(left: width * 0.05),
                          child: Column(
                            children: [
                              Featured_Projects(
                                axis: true,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: width * 0.01, right: width * 0.01),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Private in Rubua",
                                            ),
                                            Icon(
                                              Icons.favorite_border,
                                              size: 20,
                                            )
                                          ],
                                        )),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'images/Bedroom.png'),
                                              SizedBox(
                                                width: width * 0.02,
                                              ),
                                              Text("Bedroom"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'images/Bathroom.png'),
                                              SizedBox(
                                                width: width * 0.01,
                                              ),
                                              Text("Bathroom"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Container(
                                        child: Text(
                                          "\$830",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))),
              ),
              Container(
                height: height * 0.52,
                width: width * 1,
                margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: new LinearGradient(
                    colors: [
                      Color.fromRGBO(191, 100, 255, 1),
                      Color.fromRGBO(600, 100, 252, 1)
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "List your property",
                      style: getwhitestyle(13, FontWeight.w500),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Be like Akinsola",
                      style: getwhitestyle(20, FontWeight.w600),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                        "List your property & become one of 6,000+ hosts across Africa",
                        style: getwhitestyle(16, FontWeight.w500),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Learn More",
                                  style: getwhitestyle(14, FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {

                              Navigator.of(context).pushNamed(Welcome.routename);
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "List property",
                                  style: getbluestyle(14, FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.4nAnWLkqBOgW8y6iFrmyTgEgDY&pid=Api&P=0&w=251&h=188"))),
                          ),
                          Container(
                            height: height * 0.2,
                            width: width * 0.4,
                            padding: EdgeInsets.only(
                                left: width * 0.025, right: width * 0.025),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Every day it is our responsibility to improve each and every part of our client experience. We see our customers as invited guests to a party, and we are the hosts",
                                  style: getLightBlackstyle(8, FontWeight.w400),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  "Akinsola Ironside",
                                  style: getbluestyle(7, FontWeight.w500),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text("Joined 2018",
                                    style: getsecondry(
                                      7,
                                      FontWeight.w300,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Container(
                  width: width*0.6,
                  child: Text(
                    "Frequently Asked Questions",
                    style: getLightBlackstyle(24, FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: width*0.07,right: width*0.07),
                child: Text(
                  "Receive prompt answers to all your Bongalo inquiries and concerns. We have answers ready for you, whether as a guest, host or just a member.",
                  style: get_default_text_in_field(14, FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width*1,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Text("What are the benefits of using Bongalo?",
                      style: getLightBlackstyle(12, FontWeight.w500)
                  ),trailing: Icon(Icons.expand_more,color: Colors.black),),
              )

              ,
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                width: width*1,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                child: ListTile(

                  tileColor: Colors.white,
                  leading: Text("How can i reset my password",
                      style: getLightBlackstyle(12, FontWeight.w500)
                  ),trailing: Icon(Icons.expand_more,color: Colors.black),),
              )
              , SizedBox(
                height: height * 0.02,
              )

              ,Container(
                width: width*1,
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                child: ListTile(

                  tileColor: Colors.white,
                  leading: Text("Does Bongalo verify all the properties listed?",
                      style: getLightBlackstyle(12, FontWeight.w500)

                  ),trailing: Icon(Icons.expand_more,color: Colors.black),),
              ),

              SizedBox(
                height: height * 0.035,
              ),


              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(FAQ.routename);
                },
                child: Container(
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Go to FAQ’s",
                      style: getbluestyle(14, FontWeight.w500),
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    bottomNavigationBar: Bottom_Nav(),
    );
  }
}
