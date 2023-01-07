import 'package:flutter/material.dart';

class ProductContactView extends StatelessWidget {
  const ProductContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.phone,
            color: Colors.blue,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text(
            "+91 6381762084",
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
