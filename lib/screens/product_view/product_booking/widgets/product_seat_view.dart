import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utils/border.dart';
import '../../../../utils/constants.dart';

class ProductSeatView extends StatelessWidget {
  const ProductSeatView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        keyboardType: TextInputType.number,
        focusNode: FocusNode(canRequestFocus: false),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            suffixIcon: PopupMenuButton(
                itemBuilder: (context) {
                  return List.generate(
                      3,
                      (index) => PopupMenuItem(
                            child: Center(
                              child: SizedBox(
                                  width: size.width, child: Text("$index")),
                            ),
                            onTap: () {},
                          ));
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Constants.kTextGreyColor,
                )),
            border: outlineInputBorderBlack,
            labelText: "No of seat",
            enabled: true,
            disabledBorder: outlineInputBorderDisable,
            labelStyle: Theme.of(context).textTheme.bodyText2,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusColor: Constants.kSecondaryColor,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Constants.kGreyColor.withOpacity(0.5)),
            hintText: "Ex:4"),
      ),
    );
  }
}
