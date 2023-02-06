import 'package:flutter/material.dart';

import '../util/textstyle/custom_textstyle.dart';

class CustomListCategory extends StatelessWidget {
  final List? list;
  final Image? image;
  final Widget? widgetPic;
  const CustomListCategory({super.key, this.list, this.image, this.widgetPic});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list!
            .map(
              (e) => Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: image as ImageProvider, fit: BoxFit.cover),
                      color: Colors.blue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    margin: const EdgeInsets.only(right: 12, top: 20),
                    width: 170,
                    height: 70,
                    // child: Text("${e.bitLength}"),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 30,
                    child: widgetPic as Widget,
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: Text(
                      'Name of Service',
                      style: CustomTextstyle.sizeB.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
