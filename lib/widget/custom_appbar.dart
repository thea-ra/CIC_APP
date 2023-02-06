import 'package:cic_project/util/color/app_color.dart';
import 'package:cic_project/util/textstyle/custom_textstyle.dart';
import 'package:flutter/material.dart';

CustomAppbar(
    {Widget? leading,
    BuildContext? context,
    Widget? widgetTitle,
    String? title,
    List<Widget>? action,
    Color? color}) {
  return (AppBar(
    leading: leading ??
        IconButton(
          onPressed: () {
            Navigator.pop(context!);
          },
          icon: const Icon(Icons.arrow_back),
        ),
    actions: action,
    centerTitle: true,
    title: widgetTitle ??
        Text(
          '$title',
          style: CustomTextstyle.sizeB,
        ),
    backgroundColor: color ?? AppColor.mainColor,
  ));
}
