import 'package:flutter/material.dart';

import 'widgets/product_confirm_button.dart';
import 'widgets/product_datetime_view.dart';
import 'widgets/product_email_view.dart';
import 'widgets/product_fullname_view.dart';
import 'widgets/product_mobile_view.dart';
import 'widgets/product_seat_view.dart';

class ProductBookingView extends StatelessWidget {
  const ProductBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Column(
        children: const [
          ProductFullNameView(),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          ProductEmailView(),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          ProductMobileView(),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          ProductSeatView(),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          ProductDataTimeView(),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          ProductConfirmButton(),
        ],
      ),
    );
  }
}
