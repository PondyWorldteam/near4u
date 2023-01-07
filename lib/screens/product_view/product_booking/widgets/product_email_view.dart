import 'package:flutter/material.dart';

import '../../../../utils/border.dart';
import '../../../../utils/constants.dart';

class ProductEmailView extends StatelessWidget {
  const ProductEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: outlineInputBorderBlack,
            labelText: "Email",
            labelStyle: Theme.of(context).textTheme.bodyText2,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusColor: Constants.kSecondaryColor,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
            hintText: "srirampri@gmail.com"),
      ),
    );
  }
}
