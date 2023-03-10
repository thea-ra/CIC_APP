import 'package:cic_project/ui/pages/event/controller/registered_member_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget customeCheckbox() {
  final con = Get.put(RegisterContoller());
  return SizedBox(
    child: SvgPicture.asset(
        con.isTap.value ? 'asset/image/check.png' : 'asset/image/uncheck.png'),
  );
}
