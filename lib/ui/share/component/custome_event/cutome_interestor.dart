import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Interestor extends StatelessWidget {
  const Interestor(
      {super.key, this.image, this.image1, this.image2, this.interested});
  final String? image;
  final String? image1;
  final String? image2;
  final String? interested;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 24.5,
              height: 24.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CachedNetworkImage(
                imageUrl: image1 ?? '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 24.5,
                height: 24.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: image2 ?? '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Container(
                width: 40.5,
                height: 24.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  '+ $interested',
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 10,
                      color: Color(0xff0f50a4)),
                )),
              ),
            )
          ],
        ),
      ],
    );
  }
}
