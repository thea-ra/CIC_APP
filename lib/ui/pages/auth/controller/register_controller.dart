import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';
import '../../../../util/helper/globle_data.dart';
import '../screen/get_otp_screen.dart';



class Register extends GetxController {
  final con = Get.put(GlobleData());
  Future sentNum(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'register',
        methode: METHODE.post,
        isAuthorize: false,
        body: {'phone': '+855${con.phoneController.value.text}'}).then((res) {
      if (res['success'] = true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OTPScreen()));
      }
    });
  }
}
