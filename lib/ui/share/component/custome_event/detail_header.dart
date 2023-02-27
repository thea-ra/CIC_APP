import 'dart:ui';

import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      // <-- clips to the 200x200 [Container] below
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
              color: Colors.black12.withOpacity(0.7),
              alignment: Alignment.center,
              width: double.infinity,
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffFFFFFF),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '$title',
                          style: const TextStyle(
                              fontFamily: 'DMSans',
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.menu,
                      color: Color(0xffFFFFFF),
                    )
                  ],
                ),
              ))),
    );
  }
}
