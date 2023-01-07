import 'package:flutter/material.dart';
import 'package:nammaooru_nearu/presentation/route/app_router.dart';
import 'package:nammaooru_nearu/utils/constants.dart';
import 'package:nammaooru_nearu/utils/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.theme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Constants.homeRoute,
    );
  }
}
