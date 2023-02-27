import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';
import '../../../../util/helper/globle_data.dart';
import '../../../../util/helper/local_storage.dart';
import '../screen/set_password_screen.dart';

class VerifyOTP extends GetxController {
  final con = Get.put(GlobleData());

  Future verifyotp(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'verify-otp',
        methode: METHODE.post,
        isAuthorize: false,
        body: {
          "phone": '+855${con.phoneController.value.text.substring(1)}',
          "verify_code": con.otpController.value.text
        }).then((response) {
      var mytoken = response['access_token'];
      // ignore: avoid_print
      print(mytoken);
      LocalStorage.storeData(key: 'token', value: mytoken);
      if (mytoken != '') {
        debugPrint(mytoken);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SetPassword()));
      } else {
        debugPrint('token is null');
      }
    }).onError((ErrorModel error, stackTrace) {
      // ignore: avoid_print
      print(error.bodyString);
    });
  }
}
