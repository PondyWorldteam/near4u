import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void showCustomSnackBar(
    BuildContext context, String title, IconData icons, String actionTitle) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        Icon(
          icons,
          color: Constants.kPrimaryColor,
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Constants.kTextWhiteColor),
        ),
      ],
    ),
    backgroundColor: (Constants.kTextDarkBlackColor),
    action: SnackBarAction(
      label: actionTitle,
      textColor: (Constants.kPrimaryColor),
      onPressed: () {
        if (title == "Permission Denied" ||
            title == "Permission Denied forever") {
          AppSettings.openLocationSettings();
        }
        // BlocProvider.of<InternetBloc>(context)
        //     .add(const InternetCheckEvent());
      },
    ),
  ));
}
