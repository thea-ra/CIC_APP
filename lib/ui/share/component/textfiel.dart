// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../util/helper/globle_data.dart';

class ComponentTextfiel extends StatelessWidget {
  ComponentTextfiel({
    super.key,
    this.icons,
    this.text,
    this.color,
    this.controller,
  
  });
  final String? icons;
  final String? text;
  final Color? color;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final con = Get.put(GlobleData());
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffCEDCEC),
          border: Border.all(color: Colors.blue)),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 18,
                top: 10,
                bottom: 10,
              ),
              child: SvgPicture.asset(
                icons.toString(),
                color: color,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 250,
              child: TextField(
                autofocus: true,
                autocorrect: true,
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: text.toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
