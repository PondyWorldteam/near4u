import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nammaooru_nearu/presentation/bloc/location_bloc.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeScreenAppBar({required this.appBar, super.key});
  AppBar appBar;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return appBar = AppBar(
      elevation: 0,
      backgroundColor: Constants.kPrimaryColor,
      title: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Constants.locationRoute);
          // Navigator.push(context, MaterialPageRoute(builder: (_) {
          //   return BlocProvider.value(
          //       value: BlocProvider.of<LocationBloc>(context),
          //       child: LocationView());
          // }));
        },
        child: Container(
          width: size.width * 0.6,
          height: 40,
          decoration: BoxDecoration(
            color: Constants.kMangoYellowColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: BlocBuilder<LocationBloc, LocationValidateState>(
            builder: (context, state) {
              // if (state.locationStatus == LocationStatus.loaded) {
              //   print("latitude ${state.lat} longitude ${state.long}");
              // }
              if (state.locationStatus == LocationStatus.loaded) {
                return Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Constants.kSecondaryColor,
                    ),
                    Expanded(
                      child: Text(
                        state.address ?? "Waiting for address",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Constants.kSecondaryColor),
                      ),
                    )
                  ],
                );
              } else {
                return Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Constants.kSecondaryColor,
                    ),
                    Expanded(
                      child: Text(
                        state.address ?? "Waiting for address",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Constants.kSecondaryColor),
                      ),
                    )
                  ],
                );
              }
            },
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Constants.kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.wallet,
                  color: Constants.kTextWhiteColor,
                )),
          ),
        )
      ],
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Constants.kTextWhiteColor,
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
