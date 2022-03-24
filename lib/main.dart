import 'package:bongalo/Start_up/FAQ.dart';
import 'package:bongalo/Start_up/Guest_Here.dart';
import 'package:bongalo/Start_up/add_image.dart';
import 'package:bongalo/Start_up/amminities.dart';
import 'package:bongalo/Start_up/calender.dart';
import 'package:bongalo/Start_up/congrate.dart';
import 'package:bongalo/Start_up/description.dart';
import 'package:bongalo/Start_up/enter_address.dart';
import 'package:bongalo/Start_up/location.dart';
import 'package:bongalo/host/Login_Security.dart';
import 'package:bongalo/host/host_dashboard.dart';
import 'package:bongalo/Start_up/no_of_guests.dart';
import 'package:bongalo/Start_up/payout.dart';
import 'package:bongalo/Start_up/payout2.dart';
import 'package:bongalo/Start_up/place_name.dart';
import 'package:bongalo/Start_up/price_set.dart';
import 'package:bongalo/Start_up/publish.dart';
import 'package:bongalo/Start_up/published.dart';
import 'package:bongalo/Start_up/rules.dart';
import 'package:bongalo/Start_up/summary.dart';
import 'package:bongalo/host/host_listing_filter.dart';
import 'package:bongalo/host/host_pay_out_method.dart';
import 'package:bongalo/host/host_profile.dart';
import 'package:bongalo/host/listing.dart';
import 'package:bongalo/host/overview.dart';
import 'package:bongalo/profile/booking.dart';
import 'package:bongalo/profile/booking_filter.dart';
import 'package:bongalo/profile/edit_info.dart';
import 'package:bongalo/profile/edit_personel_info.dart';
import 'package:bongalo/profile/guest_profile.dart';
import 'package:bongalo/profile/payment_payout.dart';
import 'package:bongalo/profile/reservation_detail.dart';
import 'package:bongalo/profile/setting.dart';
import 'package:bongalo/profile/update_password.dart';
import 'package:bongalo/profile/upload_document.dart';
import 'package:bongalo/profile/view_profile.dart';
import 'package:bongalo/screen/Choose_Place_Type.dart';
import 'package:bongalo/screen/add_profile_pic.dart';
import 'package:bongalo/screen/added_profile.dart';
import 'package:bongalo/screen/calender_search.dart';
import 'package:bongalo/screen/card_payment.dart';
import 'package:bongalo/screen/createAccount.dart';
import 'package:bongalo/screen/explore.dart';

import 'package:bongalo/screen/filter.dart';
import 'package:bongalo/screen/forget_password.dart';
import 'package:bongalo/screen/google_login.dart';
import 'package:bongalo/screen/home.dart';
import 'package:bongalo/screen/inbox.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/password_reset.dart';
import 'package:bongalo/screen/payment_success.dart';
import 'package:bongalo/screen/property_detail.dart';
import 'package:bongalo/screen/register.dart';
import 'package:bongalo/screen/onbaord.dart';
import 'package:bongalo/screen/search_result.dart';
import 'package:bongalo/screen/splash.dart';
import 'package:bongalo/screen/success.dart';
import 'package:bongalo/screen/trip_detail.dart';
import 'package:bongalo/screen/trips.dart';
import 'package:bongalo/screen/verify.dart';
import 'package:bongalo/screen/verify_pin.dart';
import 'package:bongalo/screen/verify_via_email.dart';
import 'package:bongalo/screen/view_image.dart';
import 'package:bongalo/screen/welcome.dart';
import 'package:bongalo/screen/who_Coming.dart';
import 'package:bongalo/screen/wishlist.dart';
import 'package:bongalo/screen/wishlist_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splash(),

      routes: {
              'Calender_Screen':(context)=>Calender_Screen(),
              'Location_Screen':(context)=>Location_Screen(), 'Enter_Address':(context)=>Enter_Address(),
        'Login_Security': (context) => Login_Security(),
        'Overview_Screen': (context) => Overview_Screen(),
        'Host_Profile': (context) => Host_Profile(),
        'Host_Listing_Filter': (context) => Host_Listing_Filter(),
        'Host_Listing': (context) => Host_Listing(),
        'Reservartion_Detail': (context) => Reservartion_Detail(),
        'Booking_filter': (context) => Booking_filter(),
        'Booking': (context) => Booking(),
        'Host_Dashboard': (context) => Host_Dashboard(),
        'Wishlist_Detail': (context) => Wishlist_Detail(),
        'Explore': (context) => Explore(),
        'Inbox': (context) => Inbox(),
        'FAQ': (context) => FAQ(),
        'Added_Profile': (context) => Added_Profile(),
        'Add_Profile_Pic': (context) => Add_Profile_Pic(),
        'Verify': (context) => Verify(),
        'Payment_Success': (context) => Payment_Success(),
        'Card_Payment': (context) => Card_Payment(),
        'Property_Details': (context) => Property_Details(),
        'Filter': (context) => Filter(),
        'Who_Coming': (context) => Who_Coming(),
        'Wishlist': (context) => Wishlist(),
        'Trips': (context) => Trips(),
        'Trip_Detail': (context) => Trip_Detail(),
        'Google_Log_in': (context) => Google_Log_in(),
        'Onboard_Screen': (context) => Onboard_Screen(),
        'Search_Result': (context) => Search_Result(),
        'Edit_Info': (context) => Edit_Info(),
        'Edit_Personel_info': (context) => Edit_Personel_info(),
        'Guest_Profile': (context) => Guest_Profile(),
        'Payment_Payout': (context) => Payment_Payout(),
        'Setting': (context) => Setting(),
        'Update_Password': (context) => Update_Password(),
        'Upload_Document': (context) => Upload_Document(),
        'View_Profile': (context) => View_Profile(),
        'Choose_Place_Type': (context) => Choose_Place_Type(),
        'CreateAccount': (context) => CreateAccount(),
        'Forget_Password': (context) => Forget_Password(),
        'Home_Screen': (context) => Home_Screen(),
        'Login': (context) => Login(),
        'Onboard_Screen': (context) => Onboard_Screen(),
        'Password_Reset': (context) => Password_Reset(),
        'Register': (context) => Register(),
        'Splash': (context) => Splash(),
        'Success': (context) => Success(),
        'Verify_Pin': (context) => Verify_Pin(),
        'Verify_via_Email': (context) => Verify_via_Email(),
        'Welcome': (context) => Welcome(),
        'Add_Image': (context) => Add_Image(),
        'Ammenities': (context) => Ammenities(),
        'Congrates': (context) => Congrates(),
        'Description': (context) => Description(),
        'Guest_Here': (context) => Guest_Here(),
        'Number_of_Guests': (context) => Number_of_Guests(),
        'Host_Payout_Method': (context) => Host_Payout_Method(),
        'Host_Bank__Payout_Method': (context) => Host_Bank__Payout_Method(),
        'Payout_Method2': (context) => Payout_Method2(),
        'Place_Name': (context) => Place_Name(),
        'Price_Set': (context) => Price_Set(),
        'Publish': (context) => Publish(),
        'Published': (context) => Published(),
        'Rules': (context) => Rules(),
        'Quick_summary': (context) => Quick_summary(),

        // 'Login':(context)=>Login(),
      },
    );
  }
}
