import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../util/helper/api_base_helper.dart';
import '../model/cic_fixed_income/history_transaction/transaction_model.dart';

class UTController extends GetxController {
  @override
  void onInit() {
    gettransation();
    super.onInit();
  }

  final apibasehelper = ApiBaseHelper();
  final controller = TextEditingController().obs;
  final historiesList = <ModelTransaction>[].obs;
  final utval = ''.obs;
  final isclick = false.obs;
  double total = 0;
  double totalUT = 0;
  double sum = 0;
  final ut = 0.obs;

  // function submit

  Future submitSubscribtion(BuildContext context) async {
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'v4/subscription',
          methode: METHODE.post,
          isAuthorize: true,
          body: {"number_of_share": double.parse(utval.value)}).then((res) {
        print('=========Succest to for subscription $utval');

        context.go('/myinvest/utscreen/submitted');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<ModelTransaction>> gettransation() async {
    await apibasehelper
        .onNetworkRequesting(
            url: 'v4/history?type=subscription',
            methode: METHODE.get,
            isAuthorize: true)
        .then((res) {
      res['data'].map((e) {
        historiesList.add(ModelTransaction.fromJson(e));
      }).toList();

      print('=========The transaction: $historiesList');
      historiesList.map((e) {
        e.history!.map((val) {
          sum = sum + double.parse(val.amount.toString());
          totalUT = totalUT + double.parse(val.utamount.toString());
        }).toList();
      }).toList();
      print('=========Total UT: $sum ===============');
    });
    return historiesList;
  }
}
