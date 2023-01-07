import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselSlideView extends StatelessWidget {
  CarouselSlideView({super.key});
  List<String> images = [
    "lib/assets/images/banner_1.jpg",
    "lib/assets/images/banner_1.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        // height: 100,
        child: CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) => Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Image.asset(images[index]),
                ),
            options: CarouselOptions(height: size.height * 0.175)));
  }
}
