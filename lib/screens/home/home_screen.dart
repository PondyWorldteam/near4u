import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nammaooru_nearu/screens/home/recommended_view.dart';
import 'package:nammaooru_nearu/utils/constants.dart';
import 'package:nammaooru_nearu/utils/custom_snackbar.dart';

import '../../presentation/bloc/internet_bloc.dart';
import '../../presentation/bloc/location_bloc.dart';
import 'home_row_view.dart';
import 'widgets/carousel_slider_view.dart';
import 'widgets/category_view.dart';
import 'widgets/chip_row.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<InternetBloc, InternetValidateState>(
          listener: (context, state) {
            if (state.internetStatus == InternetStatus.connected) {
              showCustomSnackBar(context, "Internet connection restored ",
                  Icons.gpp_good_rounded, "Dismiss");
            }
            if (state.internetStatus == InternetStatus.disconnected) {
              // showCustomSnackBar(context, "No internet connection",
              //     Icons.warning_amber_rounded, "Try again later");
            }
          },
        ),
        BlocListener<LocationBloc, LocationValidateState>(
          listener: (context, state) {
            if (state.locationStatus == LocationStatus.denied) {
              showCustomSnackBar(context, "Permission Denied",
                  Icons.location_disabled_rounded, "enable it");
            }
            if (state.locationStatus == LocationStatus.deniedForever) {
              showCustomSnackBar(context, "Permission Denied forever",
                  Icons.location_disabled_rounded, "enable it");
            }
          },
        ),
      ],
      child: BlocBuilder<InternetBloc, InternetValidateState>(
        builder: (context, state) {
          if (state.internetStatus == InternetStatus.connected) {
            return Scaffold(
              backgroundColor: Constants.kTextWhiteColor.withOpacity(0.97),
              appBar: HomeScreenAppBar(
                appBar: AppBar(),
              ),
              body: LayoutBuilder(
                builder: (context, contraint) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: contraint.maxHeight,
                    ),
                    child: Column(
                      children: [
                        const HomeHeaderView(),
                        CarouselSlideView(),
                        const HomeRowView(
                          title: "Categories",
                        ),
                        CategoryView(),
                        const ChipRowView(),
                        const HomeRowView(
                          title: "Recommended for you",
                        ),
                        RecommendedView(),
                        const HomeRowView(
                          title: "Restaurant",
                        ),
                        RecommendedView(),
                        const HomeRowView(
                          title: "Medical lab",
                        ),
                        RecommendedView(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('lib/assets/lottie/no_internet.json',
                      width: 500, height: 500),
                  Text(
                    'Please wait...\nChecking the internet connection',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Constants.kSecondaryColor),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
