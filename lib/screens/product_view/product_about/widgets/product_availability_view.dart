import 'package:flutter/material.dart';
import 'package:nammaooru_nearu/utils/constants.dart';

// ignore: must_be_immutable
class ProductAvailablityView extends StatelessWidget {
  ProductAvailablityView({super.key});
  List<String> availabilityImage = [
    'lib/assets/images/free_wifi.png',
    'lib/assets/images/swimming_pool.png',
    'lib/assets/images/parking_lot.png',
    'lib/assets/images/coffe_maker.png'
  ];

  List<String> availablityName = [
    'Free Wifi',
    'Swimming pool',
    'Parking lot',
    'Coffee Maker'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      // width: size.width,
      width: size.width,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 1),
            itemCount: availabilityImage.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return ProductView();
                  // }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Constants.kLightGreyColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          availabilityImage[index],
                          width: 30,
                          height: 30,
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3)),
                        Text(
                          availablityName[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ]),
                ),
              );
            }),
      ),
    );
  }
}
