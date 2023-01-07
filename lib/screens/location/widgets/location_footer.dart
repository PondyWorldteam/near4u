import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation/bloc/location_bloc.dart';
import '../../../utils/constants.dart';

class LocationFooterView extends StatelessWidget {
  const LocationFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      // padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
          color: Constants.kTextWhiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.06, top: size.height * 0.025),
            child: Text(
              Constants.locationHeaderYourLocation,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Constants.kSecondaryColor),
            ),
          ),
          BlocBuilder<LocationBloc, LocationValidateState>(
            builder: (context, state) {
              if (state.locationStatus == LocationStatus.loaded) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.01, left: size.width * 0.05),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Constants.kPrimaryColor,
                      ),
                      Text(
                        state.area ?? "Fetching area...",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Constants.kSecondaryColor),
                      )
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.01, left: size.width * 0.05),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Constants.kPrimaryColor,
                      ),
                      Text(
                        "Mettupalaiyam",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Constants.kSecondaryColor),
                      )
                    ],
                  ),
                );
              }
            },
          ),
          BlocBuilder<LocationBloc, LocationValidateState>(
            builder: (context, state) {
              if (state.locationStatus == LocationStatus.loaded) {
                return Padding(
                  padding: EdgeInsets.only(top: 2, left: size.width * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          state.address ?? "Fetching address...",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Constants.kTextGreyColor
                                      .withOpacity(0.5)),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: size.width * 0.04),
                      //   child: OutlinedButton(
                      //       style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all(
                      //               Constants.kPrimaryColor.withOpacity(0.1))),
                      //       onPressed: () {
                      //         print("change button clicked");
                      //         showDialog(
                      //             context: context,
                      //             builder: (context) {
                      //               return LocationDialogView();
                      //             });
                      //       },
                      //       child: Text(
                      //         "CHANGE",
                      //         style: Theme.of(context)
                      //             .textTheme
                      //             .bodyText2!
                      //             .copyWith(color: Constants.kPrimaryColor),
                      //       )),
                      // )
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.only(top: 2, left: size.width * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fetching address...",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Constants.kTextGreyColor.withOpacity(0.5)),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: size.width * 0.04),
                      //   child: OutlinedButton(
                      //       style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all(
                      //               Constants.kPrimaryColor.withOpacity(0.1))),
                      //       onPressed: () {},
                      //       child: Text(
                      //         "CHANGE",
                      //         style: Theme.of(context)
                      //             .textTheme
                      //             .bodyText2!
                      //             .copyWith(color: Constants.kPrimaryColor),
                      //       )),
                      // )
                    ],
                  ),
                );
              }
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: const Divider(
              height: 2,
              color: Constants.kDividerColor,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(context, MaterialPageRoute(builder: (_) {
              //   return BlocProvider.value(
              //       value: BlocProvider.of<LocationBloc>(context),
              //       child: HomeView());
              // }));
            },
            child: Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.05,
                decoration: const BoxDecoration(
                  color: Constants.kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Confirm Location",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Constants.kTextWhiteColor),
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: size.height * 0.02))
        ],
      ),
    );
  }
}
