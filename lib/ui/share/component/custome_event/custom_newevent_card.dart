import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardNewEvent extends StatelessWidget {
  const CardNewEvent({
    super.key,
    this.title,
    this.image,
    this.date,
    this.interested,
    this.image1,
    this.image2,
  });
  final String? title;
  final String? image;
  final String? image1;
  final String? image2;
  final String? date;
  final num? interested;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 14,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, bottom: 10, right: 12),
              child: Container(
                width: 99,
                height: 99,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(14)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: (image != null)
                    ? CachedNetworkImage(
                        imageUrl: image!,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$date',
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff212525)),
                ),
                Text(
                  '$title',
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff212525)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('asset/svg/online.svg'),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff212525)),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text(
                                  '$interested Interested',
                                  style: const TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff212525)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: 24.5,
                                            height: 24.5,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            child: (image1 != null)
                                                ? CachedNetworkImage(
                                                    imageUrl: image1 ?? '',
                                                    fit: BoxFit.cover,
                                                    placeholder: (context,
                                                            url) =>
                                                        const CircularProgressIndicator(),
                                                    errorWidget: (context, url,
                                                            error) =>
                                                        const Icon(Icons.error),
                                                  )
                                                : Image.network(
                                                    'https://cicstaging.z1central.com/uploads/files/default/default-user-icon.png'),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              width: 24.5,
                                              height: 24.5,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              child: (image2 != null)
                                                  ? CachedNetworkImage(
                                                      imageUrl: image2!,
                                                      fit: BoxFit.cover,
                                                      placeholder: (context,
                                                              url) =>
                                                          const CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          const Icon(
                                                              Icons.error),
                                                    )
                                                  : Image.network(
                                                      'https://cicstaging.z1central.com/uploads/files/default/default-user-icon.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 32),
                                            child: Container(
                                              width: 40.5,
                                              height: 24.5,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
