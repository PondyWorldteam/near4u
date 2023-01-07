import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nammaooru_nearu/utils/border.dart';
import 'package:nammaooru_nearu/utils/constants.dart';

class ProductAddReviewAlertView extends StatelessWidget {
  const ProductAddReviewAlertView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Constants.kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rate & Review",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Constants.kSecondaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Constants.kSecondaryColor),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "What's your rating ?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: RatingBar(
                  onRatingUpdate: (value) {},
                  ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.amber),
                      half: const Icon(Icons.star),
                      empty: const Icon(
                        Icons.star,
                        color: Constants.kBackgroundGreyColor,
                      )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Your Comment",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Constants.kBackgroundGreyColor.withOpacity(0.3),
                        focusedBorder: outlineInputBorderSecondary,
                        focusColor: Constants.kSecondaryColor,
                        hintText: "Write your comment here",
                        border: outlineInputBorderGrey),
                  )),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Upload Image/Video",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                        color: Constants.kBackgroundGreyColor.withOpacity(0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/image_preview.png',
                          color: Constants.kTextBlackColor.withOpacity(0.3),
                        ),
                        Text(
                          "Click to add Image/Video",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Constants.kTextBlackColor
                                      .withOpacity(0.3)),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              width: size.width * 0.65,
              height: 45,
              decoration: const BoxDecoration(
                  color: Constants.kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text(
                  "Submit Your Review",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Constants.kTextWhiteColor),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10))
          ],
        ),
      ),
    );
  }
}
