import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ProductHeaderView extends StatelessWidget {
  const ProductHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      // margin: const EdgeInsets.all(10),
      child: Stack(children: [
        Image.asset(
          "lib/assets/images/paradise_image.png",
          fit: BoxFit.fill,
          width: size.width,
          height: size.height * 0.2,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Constants.kTextWhiteColor,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'lib/assets/images/share.png',
                    width: 16,
                    height: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 30),
            child: Container(
              width: 50,
              height: 24,
              decoration: const BoxDecoration(
                  color: Constants.kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Paradise VanaVilasa",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Constants.kTextWhiteColor),
                  ),
                  Text(
                    "Auroville, Kuilapalaiyam",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Constants.kTextWhiteColor),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
