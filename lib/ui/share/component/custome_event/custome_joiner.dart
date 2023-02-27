import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeJoinerEvent extends StatelessWidget {
  const CustomeJoinerEvent(
      {super.key, this.image, this.image1, this.image2, this.joiner});
  final String? image;
  final String? image1;
  final num? joiner;
  final String? image2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 35.5,
              height: 35.5,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: (image1 != null)
                  ? CachedNetworkImage(
                      imageUrl: image1 ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : Image.network(
                      'https://cicstaging.z1central.com/uploads/files/default/default-user-icon.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 35.5,
                height: 35.5,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: (image2 != null)
                    ? CachedNetworkImage(
                        imageUrl: image2!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )
                    : Image.network(
                        'https://cicstaging.z1central.com/uploads/files/default/default-user-icon.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Container(
                width: 35.5,
                height: 35.5,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: (image2 != null)
                    ? CachedNetworkImage(
                        imageUrl: image2!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )
                    : Image.network(
                        'https://cicstaging.z1central.com/uploads/files/default/default-user-icon.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 8),
              child: Text('$joiner Joined',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'DMSans',
                      color: Color(0xff0F50A4),
                      fontSize: 14)),
            ),
          ],
        ),
      ],
    );
  }
}
