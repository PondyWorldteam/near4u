import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ProductOpenStatusView extends StatelessWidget {
  const ProductOpenStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Constants.kTextWhiteColor,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.timer_sharp,
                      color: Constants.kParrotGreenColor,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Text(
                      "Open Now!",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Constants.kParrotGreenColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '9.00 AM',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color:
                              Constants.kTextDarkBlackColor.withOpacity(0.5)),
                    ),
                    Text(
                      '-',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color:
                              Constants.kTextDarkBlackColor.withOpacity(0.5)),
                    ),
                    Text(
                      '10.00 AM',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color:
                              Constants.kTextDarkBlackColor.withOpacity(0.5)),
                    )
                  ],
                ),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right,
                color: Constants.kLightGreyColor,
              ))
        ],
      ),
    );
  }
}
