import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ProductAddressView extends StatelessWidget {
  const ProductAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Icon(
          Icons.location_on,
          color: Colors.blue,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Auroville Road, 605101",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Auroville, India",
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        OutlinedButton.icon(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Constants.kPrimaryColor)),
            onPressed: () {},
            icon: const Icon(Icons.location_searching),
            label: Text(
              'Locate',
              style: Theme.of(context).textTheme.bodyText1,
            )),
      ]),
    );
  }
}
