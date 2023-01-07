import 'package:flutter/services.dart';

class Constants {
  //Colors
  static const kPrimaryColor = Color(0xFFF4BD0F);
  static const kSecondaryColor = Color(0xFF166AA8);
  static const kRedColor = Color(0xFFC6362E);
  static const kGreenColor = Color(0xFF00A371);
  static const kParrotGreenColor = Color(0xFF156B00);
  static const kLightGreyColor = Color(0xFFD9D9D9);
  static const kMangoYellowColor = Color(0xFFEEB500);
  static const kDividerColor = Color(0xFFAFAFAF);
  static const kGreyColor = Color(0xFF0F172A);
  static const kTextGreyColor = Color(0xFF0F172A);
  static const kTextDarkColor = Color(0xFF222222);
  static const kTextBlackColor = Color(0xFF000000);
  static const kTextDarkBlackColor = Color(0xFF171717);
  static const kTextWhiteColor = Color(0xFFFFFFFF);
  static const kBackgroundGreyColor = Color(0xFFE8E8E8);
  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Constants.kPrimaryColor,
      statusBarIconBrightness: Brightness.dark);
// Route Name
  static const String homeRoute = '/';
  static const String locationRoute = '/locations';

  // Home Screen
  static const homeLocationName = "Avvai Nagar, Lawspet";
  static const homeHeaderTitle = "Find Awesome Deals in Pondy";
  static const homeHeaderSubTitle =
      "List of top restaurants, cafe, boutique... ";
  static const homeHeaderSearchTitle = "Search Restaurant, cafe, etc..";
  static const homeCategories = "Categories";
  static const homeViewAll = "View all";
  static const homeRecommendedTitle = "Recommended for you";
  static const homeRestaurantTitle = "Restaurant";
  static const homeMedicalTitle = "Medical lab";
  // static const homeHeaderTitle = "Find Awesome Deals in Pondy";
  // static const homeHeaderTitle = "Find Awesome Deals in Pondy";

  //Location Screen
  static const locationActionBarTitle = "Location";
  static const String locationHeaderHint = "Enter your location manually";
  static const locationHeaderYourLocation = "Your Location";
}
