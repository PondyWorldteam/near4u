import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nammaooru_nearu/utils/constants.dart';

// ignore: must_be_immutable
class ProductReviewCommentView extends StatelessWidget {
  ProductReviewCommentView({super.key});
  List<String> reviewerNames = [
    'Alicia Marcus',
    'Alicia Marcus',
    'Alicia Marcus',
    'Alicia Marcus',
  ];
  List<String> reviewTimes = [
    '2 Weeks ago',
    '2 Weeks ago',
    '2 Weeks ago',
    '2 Weeks ago'
  ];
  List<String> reviewDescr = [
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.'
  ];
  List<String> commentsImage = [
    'lib/assets/images/comment_1.png',
    'lib/assets/images/comment_2.png',
    'lib/assets/images/comment_3.png',
    'lib/assets/images/comment_3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: reviewerNames.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'lib/assets/images/review_2.png'))),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  reviewerNames[index],
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  reviewTimes[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Constants.kTextGreyColor
                                              .withOpacity(0.5)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        RatingBar(
                          initialRating: 3,
                          itemSize: 20,
                          ratingWidget: RatingWidget(
                              full: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              half: const Icon(Icons.star),
                              empty: const Icon(
                                Icons.star,
                                color: Constants.kBackgroundGreyColor,
                              )),
                          onRatingUpdate: (value) {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text(
                        reviewDescr[index],
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 55),
                      child: SizedBox(
                        height: 100,
                        child: GridView.builder(
                            itemCount: commentsImage.length,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1, childAspectRatio: 1),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: const EdgeInsets.all(10),
                                child: index < 3
                                    ? Stack(children: [
                                        index == 2
                                            ? Stack(children: [
                                                Image.asset(
                                                  commentsImage[index],
                                                  fit: BoxFit.cover,
                                                  width: 100,
                                                  height: 100,
                                                ),
                                                Container(
                                                  color: Constants
                                                      .kTextWhiteColor
                                                      .withOpacity(0.7),
                                                  child: Center(
                                                    child: Text(
                                                      "More",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2!
                                                          .copyWith(
                                                              color: Constants
                                                                  .kSecondaryColor),
                                                    ),
                                                  ),
                                                ),
                                              ])
                                            : Image.asset(
                                                commentsImage[index],
                                                fit: BoxFit.cover,
                                                width: 100,
                                                height: 100,
                                              ),
                                      ])
                                    : Container(),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
