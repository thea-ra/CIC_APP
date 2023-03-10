import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget customeMemberProfile(
    String svgpic, String? username, VoidCallback removeitem) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20),
    child: Column(
      children: [
        Stack(
          children: [
            // ignore: unnecessary_null_comparison
            ClipOval(
              child: CachedNetworkImage(
                imageUrl: svgpic,
                imageBuilder: (context, imageProvider) => Container(
                  width: 58.0,
                  height: 58.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'asset/image/user.png',
                  fit: BoxFit.cover,
                  width: 58,
                  height: 58,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                removeitem();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 3),
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    image: const DecorationImage(
                        image: AssetImage('asset/image/cancel.png')),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          '$username',
          style: const TextStyle(
              fontFamily: 'DMSans',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff0A0B09)),
        )
      ],
    ),
  );
}
