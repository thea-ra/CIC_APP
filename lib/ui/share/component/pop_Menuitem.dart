// ignore_for_file: file_names

import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Popupmenuitem extends StatelessWidget {
  const Popupmenuitem({super.key, this.svgpicture, this.text});
  final String? svgpicture;
  final String? text;
  @override
  Widget build(BuildContext context) {
    final pop = Get.put(AppTextStyle());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              SizedBox(
                width: 20,
                child: SvgPicture.asset('$svgpicture'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  '$text',
                  style: pop.textStyle(
                      'DMSans', const Color(0xff0A0B09), 14, FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
