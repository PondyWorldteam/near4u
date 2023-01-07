import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../utils/constants.dart';

class ProductRatingBarView extends StatelessWidget {
  const ProductRatingBarView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: size.height * 0.18,
        color: Constants.kBackgroundGreyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "4.5",
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                            text: "/5",
                            style: Theme.of(context).textTheme.bodyText1)
                      ]),
                ),
                Text(
                  "Based on 120 reviews",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Constants.kTextGreyColor.withOpacity(0.5)),
                ),
                RatingBar(
                    initialRating: 4,
                    minRating: 1,
                    maxRating: 5,
                    itemSize: 26,
                    ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.amber,
                        ),
                        half: const Icon(Icons.star),
                        empty: const Icon(
                          Icons.star,
                          size: 16,
                        )),
                    onRatingUpdate: (value) {})
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Staff",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Constants.kTextGreyColor.withOpacity(0.5)),
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: 5,
                      decoration:
                          const BoxDecoration(color: Constants.kLightGreyColor),
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: 5,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Text(
                  "Facilities",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Constants.kTextGreyColor.withOpacity(0.5)),
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: 5,
                      decoration:
                          const BoxDecoration(color: Constants.kLightGreyColor),
                    ),
                    Container(
                      width: size.width * 0.23,
                      height: 5,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Text(
                  "Cleanliness",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Constants.kTextGreyColor.withOpacity(0.5)),
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: 5,
                      decoration:
                          const BoxDecoration(color: Constants.kLightGreyColor),
                    ),
                    Container(
                      width: size.width * 0.18,
                      height: 5,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Text(
                  "Comfort",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Constants.kTextGreyColor.withOpacity(0.5)),
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: 5,
                      decoration:
                          const BoxDecoration(color: Constants.kLightGreyColor),
                    ),
                    Container(
                      width: size.width * 0.28,
                      height: 5,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
