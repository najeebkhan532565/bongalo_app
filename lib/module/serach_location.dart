import 'dart:convert';
import 'package:bongalo/Start_up/enter_address.dart';
import 'package:bongalo/Start_up/location.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/module/constants.dart';
import 'package:bongalo/screen/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import '';

class Search_Location extends SearchDelegate<String>{




  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      Navigator.of(context).pop();
    }, icon:Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text("Search item please"),
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions


    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xffF9F9F9),
              radius: 20,
              child:Image.asset('images/send.png')
            ),
            title: InkWell(
              onTap: ()async{
              Position data=  await _determinePosition();
             await GetAddressFromLatLong(data).then((value) {
               Navigator.of(context).pushNamed(Location_Screen.routename,arguments: value);
             });


             },
              child: Text("Use my current location",style: TextStyle(
                  fontFamily: 'Inter-Regular',
                  fontSize: 14,
                  color: Color(0xff404040),
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline
              )),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Enter_Address.routename);
            },
            child: Container(
             margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
              child: Text("Enter address manually",style: TextStyle(
                  fontFamily: 'Inter-Regular',
                  fontSize: 14,
                  color: Color(0xff404040),
                  fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline
              )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: (){
      query="";
    }, icon: Icon(Icons.clear))];
  }

}


/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}




Future<String> GetAddressFromLatLong(Position position)async {
  List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
  print(placemarks);
  Placemark place = placemarks[0];
  String Address = '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
return Address;
}