import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation/bloc/product_view_bloc.dart';
import '../../../utils/constants.dart';

class ProductRowView extends StatelessWidget {
  const ProductRowView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.05,
        decoration: const BoxDecoration(
            color: Constants.kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
        child: BlocBuilder<ProductViewBloc, ProductViewValidate>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      BlocProvider.of<ProductViewBloc>(context)
                          .add(const ProductRowViewSelectedEvent(0));
                    },
                    child: Text(
                      'About',
                      style: state.selectedRowIndex == 0
                          ? Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Constants.kSecondaryColor)
                          : Theme.of(context).textTheme.bodyText1!.copyWith(
                                color:
                                    Constants.kSecondaryColor.withOpacity(0.5),
                              ),
                    )),
                TextButton(
                    onPressed: () {
                      BlocProvider.of<ProductViewBloc>(context)
                          .add(const ProductRowViewSelectedEvent(1));
                    },
                    child: Text(
                      'Booking',
                      style: state.selectedRowIndex == 1
                          ? Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Constants.kSecondaryColor)
                          : Theme.of(context).textTheme.bodyText1!.copyWith(
                                color:
                                    Constants.kSecondaryColor.withOpacity(0.5),
                              ),
                    )),
                TextButton(
                    onPressed: () {
                      BlocProvider.of<ProductViewBloc>(context)
                          .add(const ProductRowViewSelectedEvent(2));
                    },
                    child: Text(
                      'Offers',
                      style: state.selectedRowIndex == 2
                          ? Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Constants.kSecondaryColor)
                          : Theme.of(context).textTheme.bodyText1!.copyWith(
                                color:
                                    Constants.kSecondaryColor.withOpacity(0.5),
                              ),
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}
