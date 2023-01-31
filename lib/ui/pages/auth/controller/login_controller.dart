import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../util/helper/api_base_helper.dart';
import '../../../../util/helper/globle_data.dart';
import '../../../../util/helper/local_storage.dart';

class Login extends GetxController {
  final con = Get.put(GlobleData());
  Future login(BuildContext context) async {
    debugPrint(
        'phone===============: ${con.phoneController.value.text.substring(1)}');
    debugPrint('password===============: ${con.passwordController.value.text}');
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'v4/login',
        methode: METHODE.post,
        isAuthorize: false,
        body: {
          "phone": '+855${con.phoneController.value.text.substring(1)}',
          "password": con.passwordController.value.text
        }).then((res) {
      debugPrint('success===============');
      LocalStorage.storeData(key: 'token', value: res['access_token']);
      context.go('/');
     
    }).onError((ErrorModel error, stackTrace) {
      print(
          "error from body login :${error.bodyString} : status: ${error.statusCode}");
    });
  }
}
