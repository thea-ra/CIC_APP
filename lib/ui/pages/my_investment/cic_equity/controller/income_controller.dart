import 'package:cic_project/util/helper/api_base_helper.dart';
import 'package:cic_project/util/helper/globle_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/cic_fixed_income/dashboard/dashboard.dart';
import '../model/cic_fixed_income/income/income.dart';
import '../model/cic_fixed_income/total_investment/model_totalinvest.dart';

class IncomeController extends GetxController {
  final years = [
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014'
  ].obs;

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    getIncome();
    getDashboard();
    getconfirmed();
    getTotalinvest();
    getApproved();
    getHideApproved();
    super.onInit();
  }

  final isloadingFetchIncome = false.obs;
  double sum = 0;
  final apibasehelper = Get.put(ApiBaseHelper());
  final globle = Get.put(GlobleData());
  final mydata = <ModelIncome>[].obs;
  final dataconfirmed = <ModelIncome>[].obs;
  final controller = TextEditingController().obs;
  final editcontroller = TextEditingController().obs;
  final dataMap = <ModelIncome>{}.obs;
  final totalprice = ModelDashboard().obs;
  final maps = <String, double>{}.obs;
  final totolinvestments = ModelTotalInvestment().obs;
  final approvedlist = <ModelIncome>[].obs;
  final hidelist = <ModelIncome>[].obs;
  final hide = false.obs;
  // data pending
  Future<List<ModelIncome>> getIncome() async {
    isloadingFetchIncome(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-application?type=pending',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        mydata.clear();
        res['data'].map((e) {
          mydata.add(ModelIncome.fromJson(e));
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    isloadingFetchIncome(false);

    return mydata;
  }

  //Data confirmation
  Future<List<ModelIncome>> getconfirmed() async {
    isloadingFetchIncome(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-application?type=confirmed',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        dataconfirmed.clear();
        res['data'].map((e) {
          dataconfirmed.add(ModelIncome.fromJson(e));
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    isloadingFetchIncome(false);

    return dataconfirmed;
  }

  Future<ModelDashboard> getDashboard() async {
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/dashboard', methode: METHODE.get, isAuthorize: true)
          .then((res) {
        totalprice.value = ModelDashboard.fromJson(res);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    return totalprice.value;
  }

// get show approved data
  Future<List<ModelIncome>> getApproved() async {
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-account?hide=0',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        approvedlist.clear();
        res['data'].map((e) {
          approvedlist.add(ModelIncome.fromJson(e));
        }).toList();

        approvedlist.map((element) {
          maps['${element.accountName}'] = double.parse(element.investmentAmount
              .toString()
              .substring(1)
              .replaceAll(',', ''));
        }).toList();

        print('========my map $approvedlist =============');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    return approvedlist;
  }

  // hide approved data list
  Future<List<ModelIncome>> getHideApproved() async {
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-account?hide=1',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        hidelist.clear();
        res['data'].map((e) {
          hidelist.add(ModelIncome.fromJson(e));
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    return hidelist;
  }

  // Total investment
  Future<ModelTotalInvestment> getTotalinvest() async {
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/fif-account?total_investment=1&hide=1&',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        totolinvestments.value = ModelTotalInvestment.fromJson(res['data']);
        debugPrint('================$totolinvestments============total');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    return totolinvestments.value;
  }

  final isTap = false.obs;
  void chageColor() {
    if (isTap.value = false) {
      isTap.value = true;
    } else {
      isTap.value = false;
    }
  }
}
