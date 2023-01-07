import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nammaooru_nearu/utils/constants.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<String> categoryImages = [
    "lib/assets/images/hotel.png",
    "lib/assets/images/gym.png",
    "lib/assets/images/health.png",
    "lib/assets/images/sports.png",
    "lib/assets/images/real_estate.png",
    "lib/assets/images/restaurt.png"
  ];
  List<String> categoryName = [
    "Hotel",
    "Gym",
    "Health",
    "Sports",
    "Real Estate",
    "Restaurant"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Constants.kTextGreyColor,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Constants.kBackgroundGreyColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              decoration: const BoxDecoration(
                  color: Constants.kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Constants.kSecondaryColor,
                      )),
                  Text(
                    "Categories",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Constants.kSecondaryColor),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: categoryImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        color: Constants.kTextWhiteColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              categoryImages[index],
                              height: 100,
                            ),
                            Text(
                              categoryName[index],
                              style: Theme.of(context).textTheme.bodyText1,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
