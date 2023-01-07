import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nammaooru_nearu/screens/product_view/product_offers/product_offer_view.dart';
import 'package:nammaooru_nearu/screens/product_view/product_about/product_about_view.dart';
import 'package:nammaooru_nearu/screens/product_view/product_booking/product_booking_view.dart';
import '../../presentation/bloc/product_view_bloc.dart';
import '../../utils/constants.dart';
import 'widgets/product_header_view.dart';
import 'widgets/product_row_view.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Constants.kTextGreyColor,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Constants.kTextWhiteColor.withOpacity(0.97),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
              ),
              child: BlocBuilder<ProductViewBloc, ProductViewValidate>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const ProductHeaderView(),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14)),
                      const ProductRowView(),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15)),
                      state.selectedRowIndex == 0
                          ? const ProductAboutView()
                          : state.selectedRowIndex == 1
                              ? const ProductBookingView()
                              : state.selectedRowIndex == 2
                                  ? ProductOfferView()
                                  : Container(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
