import 'package:flutter/material.dart';
import 'package:nammaooru_nearu/utils/constants.dart';

class MyTheme {
  static final theme = ThemeData(
    primaryColor: Constants.kPrimaryColor,
    fontFamily: 'Netflix Sans',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 40, color: Constants.kTextBlackColor),
      headline2: TextStyle(fontSize: 36, color: Constants.kTextBlackColor),
      headline3: TextStyle(fontSize: 32, color: Constants.kTextBlackColor),
      headline4: TextStyle(fontSize: 28, color: Constants.kTextBlackColor),
      headline5: TextStyle(fontSize: 24, color: Constants.kTextBlackColor),
      headline6: TextStyle(fontSize: 20, color: Constants.kTextBlackColor),
      bodyText1: TextStyle(fontSize: 16, color: Constants.kTextBlackColor),
      bodyText2: TextStyle(fontSize: 14, color: Constants.kTextBlackColor),
      subtitle1: TextStyle(fontSize: 12, color: Constants.kTextBlackColor),
      subtitle2: TextStyle(fontSize: 10, color: Constants.kTextBlackColor),
    ),
  );
}
