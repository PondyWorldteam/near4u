import 'package:flutter/material.dart';

import '../../../../utils/border.dart';
import '../../../../utils/constants.dart';

class ProductDataTimeView extends StatelessWidget {
  const ProductDataTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: size.width * 0.35,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: outlineInputBorderBlack,
                labelText: "Date",
                labelStyle: Theme.of(context).textTheme.bodyText2,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusColor: Constants.kSecondaryColor,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
                hintText: "DD/MM/YYYY"),
          ),
        ),
        SizedBox(
          width: size.width * 0.35,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: outlineInputBorderBlack,
                labelText: "Time",
                labelStyle: Theme.of(context).textTheme.bodyText2,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusColor: Constants.kSecondaryColor,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
                hintText: "HH:MM:SS"),
          ),
        ),
      ],
    );
  }
}
