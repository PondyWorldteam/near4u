import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation/bloc/location_bloc.dart';
import '../../../utils/border.dart';
import '../../../utils/constants.dart';

class LocationHeaderView extends StatelessWidget {
  const LocationHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<LocationBloc, LocationValidateState>(
      builder: (context, state) {
        if (state.locationStatus == LocationStatus.loaded) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: size.height * 0.02),
                width: size.width,
                height: size.height * 0.1,
                decoration: const BoxDecoration(
                    color: Constants.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                    child: Container(
                  width: size.width * 0.85,
                  height: size.height * 0.05,
                  decoration: const BoxDecoration(
                      color: Constants.kTextWhiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextFormField(
                    onChanged: (value) {
                      return BlocProvider.of<LocationBloc>(context)
                          .add(SearchTextChangeEvent(value));
                    },
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Constants.kTextBlackColor,
                            )),
                        border: outlineInputBorderWhite,
                        focusedBorder: null,
                        enabledBorder: null,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1, horizontal: size.width * 0.02),
                        hintStyle:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Constants.kGreyColor.withOpacity(0.2),
                                ),
                        hintText: "Enter your location manually"),
                  ),
                )),
              ),
              state.autocompleteList!.isNotEmpty
                  ? Container(
                      margin: const EdgeInsets.all(8),
                      height: size.height * 0.4,
                      color: Constants.kTextWhiteColor,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              return BlocProvider.of<LocationBloc>(context).add(
                                  SearchLocationEvent(
                                      state.autocompleteList![index].placeId));
                            },
                            child: ListTile(
                              title: Text(
                                  state.autocompleteList![index].description),
                            ),
                          );
                        },
                        itemCount: state.autocompleteList!.length,
                      ),
                    )
                  : Container(),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
