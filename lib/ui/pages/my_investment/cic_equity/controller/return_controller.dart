import 'package:cic_project/util/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/cic_fixed_income/return_investment/return_investment.dart';

class ReturnInvestController extends GetxController {
  @override
  void onInit() {
    getReturnData();
    super.onInit();
  }

  final isloaing = false.obs;
  final infos = <ReturnModel>[].obs;
  final apibasehelper = ApiBaseHelper();
  final selected = ''.obs;
  final index = 0.obs;
  final ischange = false.obs;
  // fetch data from api

  Future<List<ReturnModel>> getReturnData() async {
    await apibasehelper
        .onNetworkRequesting(
            url: 'v4/return-on-investment',
            methode: METHODE.get,
            isAuthorize: true)
        .then((res) {
      res['data'].map((e) {
        infos.add(ReturnModel.fromJson(e));
      }).toList();

      debugPrint("=======My return investment: $infos");
    });
    return infos;
  }
}
