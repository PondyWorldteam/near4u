import 'package:flutter/material.dart';

import '../../../utils/border.dart';
import '../../../utils/constants.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      // padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
          color: Constants.kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Text(
            "Find Awesome Deals in Pondy",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Constants.kSecondaryColor, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: size.height * 0.005)),
          Text(
            "List of top restaurants, cafe, boutique... ",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: size.height * 0.01)),
          Center(
            child: Container(
              width: size.width * 0.75,
              height: size.height * 0.05,
              decoration: const BoxDecoration(
                  color: Constants.kTextWhiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
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
                        vertical: 1, horizontal: size.width * 0.03),
                    hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Constants.kGreyColor.withOpacity(0.2),
                        ),
                    hintText: "Search Restaurant, cafe, etc.."),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: size.height * 0.01)),
        ],
      ),
    );
  }
}
