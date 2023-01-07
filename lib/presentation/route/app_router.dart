import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nammaooru_nearu/data/repo/location_repository_impl.dart';
import 'package:nammaooru_nearu/presentation/bloc/internet_bloc.dart';
import 'package:nammaooru_nearu/presentation/bloc/location_bloc.dart';
import 'package:nammaooru_nearu/presentation/bloc/product_view_bloc.dart';
import 'package:nammaooru_nearu/utils/constants.dart';
import 'package:nammaooru_nearu/screens/home/home_screen.dart';
import 'package:nammaooru_nearu/screens/location/location_screen.dart';

class AppRouter {
  static final InternetBloc internetBloc = InternetBloc();
  static final LocationBloc locationBloc =
      LocationBloc(LocationRepositoryImpl());
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Constants.homeRoute:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => ProductViewBloc(),
                    ),
                    BlocProvider.value(
                      value: locationBloc..add(const GetCurrentLocationEvent()),
                    ),
                    BlocProvider.value(
                      value: internetBloc,
                    ),
                  ],
                  child: const HomeView(),
                ));
      case Constants.locationRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: locationBloc,
                  child: const LocationView(),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child:
                          Text("No route defined for ${routeSettings.name}")),
                ));
    }
  }
}
