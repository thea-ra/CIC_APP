import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';
import '../../../../util/helper/globle_data.dart';
import '../../home/screen/homePage.dart';

class Setpassword extends GetxController {
  final con = Get.put(GlobleData());
  Future setPassword(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'user/set-password',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "password": con.passwordController.value.text,
          "password_confirmation": con.passwordController.value.text,
        }).then((value) {
      if (value['message'] = true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else {
        debugPrint("Erro");
      }
    }).onError((ErrorModel error, stackTrace) {
      // ignore: avoid_print
      print(error.bodyString);
    });
  }
}
