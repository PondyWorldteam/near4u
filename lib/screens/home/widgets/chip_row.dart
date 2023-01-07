import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ChipRowView extends StatelessWidget {
  const ChipRowView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02, vertical: size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02)),
            Chip(
                avatar: const Icon(
                  Icons.filter_alt,
                  color: Constants.kTextGreyColor,
                ),
                side: const BorderSide(color: Constants.kTextGreyColor),
                backgroundColor: Constants.kTextWhiteColor,
                label: Text(
                  "Filter",
                  style: Theme.of(context).textTheme.bodyText2,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02)),
            Chip(
                avatar: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Constants.kTextGreyColor,
                ),
                side: const BorderSide(color: Constants.kTextGreyColor),
                backgroundColor: Constants.kTextWhiteColor,
                label: Text(
                  "Sort by",
                  style: Theme.of(context).textTheme.bodyText2,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02)),
            Chip(
                side: const BorderSide(color: Constants.kTextGreyColor),
                backgroundColor: Constants.kTextWhiteColor,
                label: Text(
                  "Others",
                  style: Theme.of(context).textTheme.bodyText2,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02)),
            Chip(
                side: const BorderSide(color: Constants.kTextGreyColor),
                backgroundColor: Constants.kTextWhiteColor,
                label: Text(
                  "with Dinning",
                  style: Theme.of(context).textTheme.bodyText2,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02)),
          ],
        ),
      ),
    );
  }
}
