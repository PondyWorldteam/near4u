import 'package:flutter/material.dart';

import '../../../../utils/border.dart';
import '../../../../utils/constants.dart';

class ProductFullNameView extends StatelessWidget {
  const ProductFullNameView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            border: outlineInputBorderBlack,
            labelText: "Full Name",
            labelStyle: Theme.of(context).textTheme.bodyText2,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusColor: Constants.kSecondaryColor,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
            hintText: "sriram"),
      ),
    );
  }
}
