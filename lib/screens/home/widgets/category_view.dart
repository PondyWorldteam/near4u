import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({super.key});
  List<String> categoryImages = [
    "lib/assets/images/hotel.png",
    "lib/assets/images/gym.png",
    "lib/assets/images/health.png"
  ];
  List<String> categoryName = ["Hotel", "Gym", "Health"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.18,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          scrollDirection: Axis.horizontal,
          itemCount: categoryImages.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Constants.kTextWhiteColor,
              ),
              child: Column(
                children: [
                  Image.asset(
                    categoryImages[index],
                    fit: BoxFit.cover,
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                  ),
                  Text(
                    categoryName[index],
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            );
          }),
    );
  }
}
