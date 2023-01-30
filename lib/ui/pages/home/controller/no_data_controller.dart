import 'package:get/get.dart';

import '../model/Case_nodata/case_nodata.dart';

class ControllerHome extends GetxController {
  final datalist = <ControllerHomeModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchdata();
    super.onInit();
  }

  final data = [
    {'svg': 'asset/svg/myinvest.svg', 'text': 'My Investment'},
    {'svg': 'asset/svg/Bonus.svg', 'text': 'Bonus'},
    {'svg': 'asset/svg/funding.svg', 'text': 'Get Funding'},
    {'svg': 'asset/svg/trade.svg', 'text': 'UT Tradding'},
    {'svg': 'asset/svg/directory.svg', 'text': 'Directory'},
    {'svg': 'asset/svg/Report.svg', 'text': 'Report'}
  ];

  fetchdata() {
    data.map((e) {
      datalist.add(ControllerHomeModel.fromJson(e));
    }).toList();
  }
}
