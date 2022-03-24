import 'package:bongalo/module/color.dart';
import 'package:bongalo/screen/card_payment.dart';
import 'package:bongalo/screen/view_image.dart';
import 'package:bongalo/widgets/gallery%20_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Property_Details extends StatelessWidget {
  static const routename="Property_Details";
bool status=false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    status=ModalRoute.of(context)!.settings.arguments as bool;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        leadingWidth: width*0.2,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.only(left: width*0.1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff515E6B).withOpacity(0.45),
                      blurRadius: 2,
                      offset: Offset(0,6.0)
                  )
                ],

                color: Colors.white,
              image: DecorationImage(
                image: AssetImage("images/back.png")
              )
            ),

          ),
        ),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: width * 0.05),

            child:  Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff515E6B).withOpacity(0.08),
                      blurRadius: 1,
                      offset: Offset(0,6.0)
                  )
                ],

                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/back.png")
                )
            ),

          )
         ,
          Container(
          margin: EdgeInsets.only(right: width * 0.05),
          child: SvgPicture.asset('images/wishlist.svg'),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff515E6B).withOpacity(0.1),
                      blurRadius: 1,
                      offset: Offset(0,6.0)
                  )
                ],

                color: Colors.white,

            ),

          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Nirvana Heights Resort",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Kigali City, Rwanda",
              style: getsecondry(14, FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffF3CE6D),
                  size: 18,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "4.8 (30 Reviews)",
                style: getsecondry(14, FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GalleryPhotoViewWrapper(
                      galleryItems: galleryItems,
                      backgroundDecoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      initialIndex: 0,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                );
              },
              child: Container(
                height: height * 0.25,
                width: width * 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://tse3.mm.bing.net/th?id=OIP.qLVYj_t-HU2Yyx3v_wFgLwHaE6&pid=Api&P=0&w=274&h=182',
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        right: 0,
                        bottom: height * 0.02,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.only(
                                left: 8, right: 8, top: 5, bottom: 5),
                            child: Text('See all photos (32)',style: getLightBlackstyle(11, FontWeight.w500),)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
//private room
            Container(
                child: Text(
              "Private Room in Rubavu ",
              style: getLightBlackstyle(16, FontWeight.w600),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Image.asset('images/Bedroom.png'),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "1 rooms",
                  style: getsecondry(15, FontWeight.w400),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Image.asset('images/Bathroom.png'),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "2 baths",
                  style: getsecondry(15, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "This well-equipped property with two bedrooms boasts a spectacular view of the mountains and the valley and a wide deck. Nine sliding glass panels provide the sense of the penthouse to this corner property. Many recent improvements include excellent quality wood trims and furnishings. The well-appointed kitchen contains a wonderful variety of cookbooks and a huge saucepan. At the dining table there are six seats. The living room includes a flat-screen TV, DVD player, a stereo and a couch bed. The main bedroom is furnished with a king bed, an en suite bathroom and stunning views. The second bedroom features a king size bed and gives the possibility to install French doors.",
              style: getsecondry(14, FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            //amminities
            Container(
                child: Text(
              "Ammenities",
              style: getLightBlackstyle(16, FontWeight.w600)
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset('images/kitchen.svg'),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Kitchen",
                style: getsecondry(14, FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset('images/wifi.svg'),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "WIFI",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'images/hair-dryer.svg',
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Dryrer",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'images/heater.svg',
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Heater",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset('images/swimmingpool.svg'),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Swimming Pool",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Image.asset('images/tv.png'),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "TV",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Center(
                  child: Text(
                "See All 32 Ammenities",
                style: TextStyle(color: Colors.black, fontSize: 16),
              )),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            //Things to keep in mind
            Container(
                child: Text(
              "Things to keep in mind",
              style: getLightBlackstyle(16, FontWeight.w600),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                child: Text(
              "House Rules",
              style: getLightBlackstyle(14, FontWeight.w500)
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Checkin: After 12:00 PM",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Checkout: Flexible",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "No smoking",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "No loud music",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "No kids",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "No party",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                child: Text(
              "Map",
              style: getLightBlackstyle(16, FontWeight.w600),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                child: Text(
              "Nirvana Heights Resort",
              style: getLightBlackstyle(16, FontWeight.w600)
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Detailed location provided after booking",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Inter-Light'),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.25,
              width: width * 1,
              child: Image.asset(
                'images/Frame 5577.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "What’s nearby",
              style: getLightBlackstyle(14, FontWeight.w500)
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Steamboat Ski Resort",
                  style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "UCHealth Yampa Valley Medical Center",
                  style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "The Tennis Center at Steamboat Springs",
                  style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Amaze'n Steamboat Family Fun Park",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Temple's Crotch",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Yampa River Botanic Park",
                style: getsecondry(14, FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
//Reviews
            Container(
                child: Text(
              "Reviews",
              style: getLightBlackstyle(16, FontWeight.w600),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://tse2.mm.bing.net/th?id=OIP.SYIBNg9Pmpcp8ebumL-aagHaFj&pid=Api&P=0&w=243&h=182"),
              ),
              title: Text(
                "Savannah Nguyen",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 15,
                    fontFamily: 'Inter-Bold'),
              ),
              subtitle: Text(
                "October 2021",
                style: TextStyle(
                    color: Color.fromRGBO(107, 107, 117, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Inter-Light'),
              ),
            ),

            Text(
              "The property was generally quite beautiful. The first question was the furnishings of the patio. A few of the seats that seemed to have gone so that they could not utilize. WOuld been wonderful to have a modest table sitting on the terrace to enjoy our coffee/wine. If not, lovely apartment. Thanks!",
              style: getsecondry(14, FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://tse2.mm.bing.net/th?id=OIP.SYIBNg9Pmpcp8ebumL-aagHaFj&pid=Api&P=0&w=243&h=182"),
              ),
              title: Text(
                "Savannah Nguyen",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 15,
                    fontFamily: 'Inter-Bold'),
              ),
              subtitle: Text(
                "October 2021",
                style: TextStyle(
                    color: Color.fromRGBO(107, 107, 117, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Inter-Light'),
              ),
            ),

            Text(
              "The property was generally quite beautiful. The first question was the furnishings of the patio. A few of the seats that seemed to have gone so that they could not utilize. WOuld been wonderful to have a modest table sitting on the terrace to enjoy our coffee/wine. If not, lovely apartment. Thanks!",
              style: getsecondry(14, FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Center(
                  child: Text(
                    "See All 32 Reviews",
                    style: getLightBlackstyle(14, FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            Center(
              child: Text(
               "View similar properties",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Inter-Light'),
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://tse2.mm.bing.net/th?id=OIP.SYIBNg9Pmpcp8ebumL-aagHaFj&pid=Api&P=0&w=243&h=182"),
              ),
              title: Text(
                "Property Listed By Ngenge Ismali",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontSize: 15,
                    fontFamily: 'Inter-Bold'),
              ),
              subtitle: Text(
                "Joined in October 2021",
                style: getsecondry(14, FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffF3CE6D),
                  size: 18,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "4.8 (30 Reviews)",
                  style: getsecondry(14, FontWeight.w400),
                )
              ],
            ),

            ListTile(
              leading: Text(
                "Languages:",
                style: getsecondry(14, FontWeight.w400),
              ),
              title: Text(
                "English, French, Zulu",
                style: getsecondry(14, FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Text(
                "Response rate::",
                style: getsecondry(14, FontWeight.w400),
              ),
              title: Text(
                "100%",
                style: getsecondry(14, FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Text(
                "Response time:",
                style: getsecondry(14, FontWeight.w400),
              ),
              title: Text(
                "Within 1 hour",
                style:  getsecondry(14, FontWeight.w400),
              ),
            ),

            Container(
              height: height * 0.07,
              width: width * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Center(
                  child: Text(
                    "Connect Host",
                    style: getLightBlackstyle(14, FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "To protect your payment, never transfer money or communicate outside of the Bongalo app.",
              style: getsecondry(12, FontWeight.w400),
            ),

            ListTile(
              leading: Image.asset('images/flag.png',color: Colors.red,),
              title: Text(
                "Report this listing",
                style: TextStyle(
                    color: Color.fromRGBO(107, 107, 117, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'Inter-Light'),
              ),
            ),



//House rules

            Container(
                child: Text(
              "House Rules",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 15,
                  fontFamily: 'Inter-Bold'),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Check-in: 2:00PM - 10:00PM",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Inter-Light'),
            )
,

            SizedBox(
              height: height * 0.02,
            ),
            //Health & Safety
            Container(
                child: Text(
              "Health & Safety",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 15,
                  fontFamily: 'Inter-Bold'),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Committed to CozySpot’s cleaning policy.Social distancing and other COVID-19 related guidelines apply.",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Inter-Light'),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            //Cancellation policy
            Container(
                child: Text(
              "Cancellation policy",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontSize: 15,
                  fontFamily: 'Inter-Bold'),
            )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Free cancellation for 48 hours",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 117, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Inter-Light'),
            )

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.08,
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
                child: Text("\$97 / Night")),

           status?
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Card_Payment.routename);
              },
              child : Container(
                height: height * 0.06,
                width: width * 0.37,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                      "Preserve",
                      style: getwhitestyle(14, FontWeight.w600),
                    )),
              ),
            ):

    InkWell(
    onTap: (){
    Navigator.of(context).pushNamed(Card_Payment.routename);
    },
    child : Container(
    height: height * 0.06,
    width: width * 0.37,
    decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
    child: Text(
    "Check Availability",
    style: getwhitestyle(14, FontWeight.w600),
    )),
    ),
    )
            ,
          ],
        ),
      ),
    );
  }
}
