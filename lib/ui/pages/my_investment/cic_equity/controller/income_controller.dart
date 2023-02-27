import 'package:cic_project/util/helper/api_base_helper.dart';
import 'package:cic_project/util/helper/globle_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/cic_fixed_income/income.dart';

class IncomeController extends GetxController {
  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    getIncome();
    super.onInit();
  }

  double sum = 0;
  final apibasehelper = Get.put(ApiBaseHelper());
  final globle = Get.put(GlobleData());
  final mydata = <ModelIncome>[].obs;

  Future<List<ModelIncome>> getIncome() async {
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-application?type=pending',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        res['data'].map((e) {
          mydata.add(ModelIncome.fromJson(e));
        }).toList();

        mydata.map((e) {
          var income = e.investmentAmount!.replaceAll(',', '');
          sum = sum + double.parse(income.substring(1));
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }

    return mydata;
  }
}
