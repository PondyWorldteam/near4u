import 'package:flutter/material.dart';
import 'package:nammaooru_nearu/screens/product_view/product_about/widgets/product_review_comment_view.dart';
import '../../../utils/constants.dart';
import '../../home/home_row_view.dart';
import 'widgets/product_address_view.dart';
import 'widgets/product_availability_view.dart';
import 'widgets/product_contact_view.dart';
import 'widgets/product_message_view.dart';
import 'widgets/product_open_status_view.dart';
import 'widgets/product_preview.dart';
import 'widgets/product_public_review.dart';
import 'widgets/product_rating_bar_view.dart';
import 'widgets/product_read_more.dart';
import 'widgets/product_row_button_view.dart';

class ProductAboutView extends StatelessWidget {
  const ProductAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductOpenStatusView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        const ProductReadModeView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        const HomeRowView(title: "Preview"),
        ProductPreviewView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        const HomeRowView(title: "Availablity"),
        ProductAvailablityView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "Address & Location",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image.asset('lib/assets/images/map_preview.png'),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        const ProductAddressView(),
        Container(
          height: 15,
          color: Constants.kDividerColor.withOpacity(0.2),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "Contact",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        const ProductContactView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        const ProductMessageView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        const ProductRowButtonView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "Ratings",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        const ProductRatingBarView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        const Divider(
          color: Constants.kDividerColor,
          height: 1,
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "Review",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        const ProductPublicReviewView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        ProductReviewCommentView(),
        const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
      ],
    );
  }
}
