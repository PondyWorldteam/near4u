import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'widgets/product_list_item_view.dart';
import 'widgets/product_row_list.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                // margin: const EdgeInsets.all(10),
                child: Stack(children: [
                  Image.asset(
                    "lib/assets/images/hotel_cover.png",
                    fit: BoxFit.fill,
                    width: size.width,
                    height: size.height * 0.2,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.chevron_left,
                                  color: Constants.kTextWhiteColor,
                                )),
                            Text(
                              "Hotel",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Constants.kTextWhiteColor),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'lib/assets/images/share.png',
                              width: 16,
                              height: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              ProductRowListView(),
              ProductListItemView()
            ],
          ),
        ),
      ),
    );
  }
}
