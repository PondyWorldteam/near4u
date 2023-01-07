import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ProductRowButtonView extends StatelessWidget {
  const ProductRowButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Constants.kGreenColor)),
            onPressed: () {},
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_in_talk,
                    color: Constants.kTextWhiteColor,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    "Call",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Constants.kTextWhiteColor),
                  ),
                ],
              ),
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Constants.kRedColor)),
            onPressed: () {},
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.message,
                    color: Constants.kTextWhiteColor,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    "Message",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Constants.kTextWhiteColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
