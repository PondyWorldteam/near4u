import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductReadModeView extends StatelessWidget {
  const ProductReadModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ReadMoreText(
        "Located in Auroville, 6.4 km from Pondicherry, Paradise Vana Vilasa Homestay with Swimming pool provides a garden and free WiFi. Each unit comes with a seating area, a flat-screen TV with cable channels, a well-fitted kitchen with a dining area, a safety deposit box and a private bathroom with bathrobes. Some units include a patio and/or a balcony with pool",
        style: Theme.of(context).textTheme.bodyText2,
        trimMode: TrimMode.Line,
        trimLines: 5,
        trimCollapsedText: "...Read more",
        trimExpandedText: ' Less',
      ),
    );
  }
}
