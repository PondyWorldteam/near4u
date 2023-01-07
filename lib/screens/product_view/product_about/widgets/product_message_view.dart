import 'package:flutter/material.dart';

class ProductMessageView extends StatelessWidget {
  const ProductMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.mail,
            color: Colors.blue,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text(
            "paradisevanavilasa@gmail.com",
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
