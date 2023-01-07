import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utils/border.dart';
import '../../../../utils/constants.dart';

class ProductMobileView extends StatelessWidget {
  const ProductMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            border: outlineInputBorderBlack,
            labelText: "Mobile Number",
            labelStyle: Theme.of(context).textTheme.bodyText2,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusColor: Constants.kSecondaryColor,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
            hintText: "+91 9999999999"),
      ),
    );
  }
}
