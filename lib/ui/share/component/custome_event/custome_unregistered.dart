import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeUnRegister extends StatelessWidget {
  const CustomeUnRegister({
    super.key,
    this.network,
    this.username,
    this.companyName,
    this.event,
    required this.isTap,
  });
  final String? network;
  final String? username;
  final String? companyName;
  final String? event;
  final bool isTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 2, color: Color(0xffE6E6E6)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: '$network',
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
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$username',
                        style: const TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0A0B09)),
                      ),
                      Text('$companyName',
                          style: const TextStyle(
                              fontFamily: 'DMSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff464646))),
                    ],
                  ),
                ),
              ],
            ),
            Image.asset(
                isTap ? 'asset/image/check.png' : 'asset/image/uncheck.png'),
          ],
        ),
      ),
    );
  }
}
