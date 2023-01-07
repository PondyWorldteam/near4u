import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nammaooru_nearu/presentation/bloc/product_view_bloc.dart';
import 'package:nammaooru_nearu/screens/product_view/product_view.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class RecommendedView extends StatelessWidget {
  RecommendedView({super.key});
  List<String> recommendedImages = [
    "lib/assets/images/paradise_image.png",
    "lib/assets/images/banana_leaf.png",
    "lib/assets/images/restaurant_2.png"
  ];
  List<String> recommendedName = [
    "Paradise Vana Vilasa",
    "Banana Leaf",
    "Food Paradise"
  ];
  List<String> recommendedAddress = [
    "Auroville, Kuilapalaiyam",
    "Kamaraj Salai, Puducherry",
    "Heritage Town, Puducherry"
  ];
  List<String> recommendedStatus = ["5KM | Open", "2KM | Open", "1KM | Open"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.2,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.015, vertical: size.height * 0.01),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 0.65),
            itemCount: recommendedImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return BlocProvider.value(
                        value: BlocProvider.of<ProductViewBloc>(context),
                        child: const ProductView());
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.all(10),
                  child: Stack(children: [
                    Image.asset(
                      recommendedImages[index],
                      fit: BoxFit.fill,
                      width: size.width * 0.55,
                      height: size.height * 0.2,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: size.width * 0.12,
                        height: size.height * 0.03,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: size.width * 0.08,
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  Constants.kTextWhiteColor.withOpacity(0.3)),
                          child: const Icon(
                            Icons.save,
                            color: Constants.kTextWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.025),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
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
                              const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5))
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
