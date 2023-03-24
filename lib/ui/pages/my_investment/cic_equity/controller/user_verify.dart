import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../util/helper/api_base_helper.dart';
import 'income_controller.dart';

class VerifyUser extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final incomecontroller = IncomeController();

  Future verifyUser(int? id, bool? hide, BuildContext? context) async {
    print(id);
    print(hide);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'user/verify-pin-code',
          methode: METHODE.post,
          isAuthorize: true,
          body: {"pin_code": 2222}).then((res) async {
        if (res["success"] = true) {
          await onShowHideInvestmentAmount(id: id, hide: hide).then((value) {
            context!.pop();
          });

          // navigator!.pop();
        } else {
          debugPrint('Error');
        }
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future onShowHideInvestmentAmount(
      {int? id, bool? hide, BuildContext? context}) async {
    String? type;
    // print("hide $hide");
    hide! ? type = 'show' : type = 'hide';
    // print("type $type");
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'fif-account-hide-show',
              methode: METHODE.post,
              isAuthorize: true,
              body: {"id": id, "type": type})
          .then((res) {})
          .onError((ErrorModel error, stackTrace) {
            debugPrint(error.bodyString);
          })
          .onError((error, stackTrace) {
            debugPrint(error.toString());
          });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
