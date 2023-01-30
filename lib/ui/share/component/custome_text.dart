import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../apphelper/textstyle.dart';

class CustomeText extends StatelessWidget {
  const CustomeText({super.key, this.leading, this.trialing});
  final String? leading;
  final String? trialing;

  @override
  Widget build(BuildContext context) {
    final con = Get.put(AppTextStyle());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$leading',
          style: con.textStyle(
              'DMSans', const Color(0xff464646), 14, FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 14,
          ),
          child: Text('$trialing',
              style: con.textStyle(
                  'DMSans', const Color(0xff0A0B09), 12, FontWeight.w700)),
        )
      ],
    );
  }
}
