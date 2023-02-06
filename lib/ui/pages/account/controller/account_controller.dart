import 'package:cic_project/ui/pages/account/model/accoun/model_account.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';

class AccountController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    super.onInit();
  }

  final isloading = false.obs;
  final datamemeber = AccountModel().obs;
  final apibasehelper = ApiBaseHelper();

  //Get data from api
  Future<AccountModel> fetchData() async {
    isloading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/user', methode: METHODE.get, isAuthorize: true)
          .then((res) {
        datamemeber.value = AccountModel.fromJson(res);
        debugPrint(datamemeber.value.fullname);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    isloading(false);
    return datamemeber.value;
  }
}
