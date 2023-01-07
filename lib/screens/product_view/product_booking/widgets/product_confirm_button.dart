import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ProductConfirmButton extends StatelessWidget {
  const ProductConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.05,
        decoration: const BoxDecoration(
          color: Constants.kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            "Confirm Booking",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Constants.kTextWhiteColor),
          ),
        ),
      ),
    );
  }
}
