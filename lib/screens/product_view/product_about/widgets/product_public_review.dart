import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import 'product_add_review_alert.dart';

class ProductPublicReviewView extends StatelessWidget {
  const ProductPublicReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/review_1.png'))),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) {
                    return const ProductAddReviewAlertView();
                  }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add a public Review",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Container(
                  height: 2,
                  width: size.width * 0.5,
                  color: Constants.kDividerColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
