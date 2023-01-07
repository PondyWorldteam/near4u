import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class ProductListItemView extends StatelessWidget {
  ProductListItemView({super.key});
  List<String> recommendedImages = [
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/paradise_image.png",
  ];
  List<String> recommendedName = [
    "Paradise Vana Vilasa",
    "Paradise Vana Vilasa",
    "Paradise Vana Vilasa",
    "Paradise Vana Vilasa",
    "Paradise Vana Vilasa",
    "Paradise Vana Vilasa",
  ];
  List<String> recommendedAddress = [
    "Auroville, Kuilapalaiyam",
    "Auroville, Kuilapalaiyam",
    "Auroville, Kuilapalaiyam",
    "Auroville, Kuilapalaiyam",
    "Auroville, Kuilapalaiyam",
    "Auroville, Kuilapalaiyam",
  ];
  List<String> recommendedStatus = [
    "5KM | Open",
    "5KM | Open",
    "5KM | Open",
    "5KM | Open",
    "5KM | Open",
    "5KM | Open",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: recommendedImages.length,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.4),
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.all(15),
              child: Stack(children: [
                Image.asset(
                  recommendedImages[index],
                  fit: BoxFit.fill,
                  width: size.width,
                  height: size.height,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 24,
                    decoration: const BoxDecoration(
                        color: Constants.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          size: 16,
                          Icons.star,
                          color: Constants.kTextBlackColor,
                        ),
                        Text(
                          "4.5",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Constants.kTextWhiteColor.withOpacity(0.3)),
                      child: const Icon(
                        Icons.save,
                        color: Constants.kTextWhiteColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        recommendedName[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Constants.kTextWhiteColor),
                      ),
                      Text(
                        recommendedAddress[index],
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Constants.kTextWhiteColor),
                      ),
                      Text(
                        recommendedStatus[index],
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Constants.kTextWhiteColor),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5))
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
