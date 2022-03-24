import 'package:bongalo/module/post.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Featured_Projects extends StatefulWidget {

   bool  axis;
  Featured_Projects({required this.axis});


  @override
  _Featured_ProjectsState createState() => _Featured_ProjectsState();
}

class _Featured_ProjectsState extends State<Featured_Projects> {

  int _active_index=0;
  final controller  =CarouselController();

  CarouselSlider ? carouselSlider;

  List imgList = [

    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',

    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(

      height: height*0.25,
      margin: EdgeInsets.only(bottom: width*0.05,),
      child: Stack(
        children:[
          Container(
            child: CarouselSlider.builder(
              carouselController: controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.25,

                  initialPage: 0,
                  viewportFraction: 1,
                  reverse: true,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  autoPlayInterval: Duration(seconds: 10),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  onPageChanged: (index,reason){
                    setState(() {
                      _active_index=index;
                    });
                  }

              ),
              itemBuilder: (context,index,realindex){
                final imageurl=imgList[index];
                return buildImage(imageurl,index);
              }, itemCount: imgList.length,
            ),
          ),
          Positioned(
              left: width*0.025,
              top: MediaQuery.of(context).size.height*0.07,
              child: InkWell(
                  onTap: previous,
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,))),
         Positioned(
             right: width*0.025,
             top: MediaQuery.of(context).size.height*0.07,
             child: InkWell(
                 onTap: next,
                 child: Icon(Icons.arrow_forward_ios,color: Colors.white,))),
          Positioned(
            right: width*0.04,
            bottom: height*0.025,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: new LinearGradient(
    colors: [
    Color.fromRGBO(191, 100, 255, 1),
    Color.fromRGBO(600, 100, 252, 1)
    ],
    ),

              ),
              padding: EdgeInsets.only(left: width*0.025,right: width*0.025,top: height*0.01,bottom: height*0.01),

              child: Row(
                children: [
                  Text("4.8",style: TextStyle(color: Colors.white),),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ],
              ),
            )
          )
,
          Positioned(
            bottom: height*0.02,
              left:
              widget.axis?
              width/2-width*0.3:
              width/2-width*0.2,
              child: buildIndicator()),
        ],
      ),
    );

  }
  Widget buildImage(String urlImage,int index)=>Align(
    alignment: Alignment.topLeft,
    child: Container(

      decoration: BoxDecoration(
          color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(urlImage.toString())
        )
      ),

      // width: MediaQuery.of(context).size.width*1,
    ),
  );
  Widget buildIndicator()=>Center(
    child: AnimatedSmoothIndicator(activeIndex: _active_index, count: imgList.length,onDotClicked: animatetoslide,effect: SlideEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Colors.white,
        dotColor: Colors.black45
    ),),
  );

  Widget buildBotton({bool stretch=false})=>Container(
    color: Colors.red,
    height: MediaQuery.of(context).size.height*0.1,
    child:   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Positioned(
            left: 0,
            child: RaisedButton(onPressed: previous,child: Icon(Icons.arrow_back),)),

        SizedBox(width: 5,),

        RaisedButton(onPressed: next,child: Icon(Icons.arrow_forward),)

      ],

    ),
  );

  void animatetoslide(int index)=>controller.animateToPage(index);

  void previous()=>controller.previousPage(duration: Duration(microseconds: 500));

  void next()=>controller.nextPage(duration: Duration(microseconds: 500));

}
