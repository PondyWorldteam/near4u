import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class ProductRowListView extends StatelessWidget {
  ProductRowListView({super.key});
  List<String> productList = [
    'Hotel',
    'Fitness',
    'Health',
    'Sports',
    'Real Estate',
    'Restuarant',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: size.width * 0.65,
            height: size.height * 0.06,
            decoration: const BoxDecoration(
                color: Constants.kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TextButton(
                    onPressed: () {},
                    child: Text(productList[index],
                        style: index == 0
                            ? Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Constants.kSecondaryColor)
                            : Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Constants.kSecondaryColor
                                    .withOpacity(0.5))));
              },
              itemCount: productList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            )),
      ),
    );
  }
}
