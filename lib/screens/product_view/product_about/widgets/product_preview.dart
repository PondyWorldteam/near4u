import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductPreviewView extends StatelessWidget {
  ProductPreviewView({super.key});
  List<String> previewImages = [
    'lib/assets/images/preview_1.png',
    'lib/assets/images/preview_2.png',
    'lib/assets/images/preview_3.png',
    'lib/assets/images/preview_4.png'
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
            itemCount: previewImages.length,
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
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.all(10),
                  child: Stack(children: [
                    Image.asset(
                      previewImages[index],
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
