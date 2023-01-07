import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

// ignore: must_be_immutable
class LocationDialogView extends StatelessWidget {
  LocationDialogView({super.key});
  List<String> recentLocationName = ['Lawspet', 'Mettupalaiyam'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Container(
        width: size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: size.width,
              decoration: const BoxDecoration(
                color: Constants.kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location Permission is off",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Constants.kSecondaryColor),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                      Text(
                        "Granting location permission\nwill ensure accurate address\nand hassle free delivery.",
                        maxLines: 3,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Constants.kSecondaryColor),
                      ),
                    ],
                  ),
                  OutlinedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Constants.kTextWhiteColor)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.gps_fixed,
                      color: Constants.kTextGreyColor,
                    ),
                    label: Text(
                      "Locate",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Constants.kSecondaryColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Constants.kBackgroundGreyColor,
              child: Text(
                "Recent Locations",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              width: size.width,
              color: Constants.kTextWhiteColor,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 2,
                    color: Constants.kGreyColor.withOpacity(0.2),
                  );
                },
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Constants.kPrimaryColor,
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Text(
                          recentLocationName[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Constants.kSecondaryColor),
                        )
                      ],
                    ),
                  );
                },
                itemCount: recentLocationName.length,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Constants.kGreyColor.withOpacity(0.5),
                    focusColor: Constants.kSecondaryColor,
                    hintText: "Enter your location manually",
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Constants.kGreyColor.withOpacity(0.5))),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10))
          ],
        ),
      ),
    );
  }
}
