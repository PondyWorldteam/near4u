import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductOfferView extends StatelessWidget {
  ProductOfferView({super.key});
  List<String> offerImages = [
    'lib/assets/images/offer_1.png',
    'lib/assets/images/offer_2.png',
    'lib/assets/images/offer_3.png',
    'lib/assets/images/offer_4.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: offerImages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 0, childAspectRatio: 1),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: index == 1
                  ? Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(offerImages[index]))
                  : index == 2
                      ? Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset(offerImages[index]))
                      : Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset(
                            offerImages[index],

                            // width: 100,
                            // height: 100,
                          ),
                        ),
            );
          }),
    );
  }
}
