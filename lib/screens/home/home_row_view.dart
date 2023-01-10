import 'package:flutter/material.dart';
import 'package:nammaooru_nearu/screens/category/category_list_view.dart';
import 'package:nammaooru_nearu/screens/product_list/product_list_view.dart';

import '../../utils/constants.dart';

class HomeRowView extends StatelessWidget {
  const HomeRowView({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.025,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: () {
              if (title == "Categories") {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryListView();
                }));
              }
              if (title == "Recommended for you") {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProductListView();
                }));
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'View all',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Constants.kSecondaryColor),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Constants.kSecondaryColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
