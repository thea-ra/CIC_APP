import 'package:cic_project/ui/pages/home/home_model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../core/model/graph/graph_model.dart';
import '../../../../core/model/investment/investment.dart';
import '../../../../util/helper/api_base_helper.dart';
// ignore: depend_on_referenced_packages

class HomeController extends GetxController {
  @override
  void onInit() {
    fetchData();
    investment();
    ongetGraph();
    // TODO: implement onInit
    super.onInit();
  }

  final isClick = false.obs;
  final homeList = <HomeModel>[].obs;
  final isLoading = false.obs;
  final investData = InvestmentModel().obs;
  final apihelper = ApiBaseHelper();
  final graphlist = <Synfusion>[].obs;
  final loading = false.obs;
  Future<List<HomeModel>> fetchData() async {
    isLoading(true);
    await apihelper
        .onNetworkRequesting(
            url: 'service/qm?partial=menu',
            methode: METHODE.get,
            isAuthorize: false)
        .then(
      (response) {
        response['data'].map((e) {
          homeList.add(HomeModel.fromJson(e));
        }).toList();
        print(homeList);
      },
    );
    isLoading(false);
    return homeList;
  }

  Future<InvestmentModel> investment() async {
    await apihelper
        .onNetworkRequesting(
            url: 'price', methode: METHODE.get, isAuthorize: true)
        .then((res) {
      investData.value = InvestmentModel.fromJson(res['data']);
      debugPrint('data = $investData');
    }).onError((ErrorModel error, stackTrace) {
      debugPrint(error.bodyString.toString());
    });

    return investData.value;
  }

  Future<List<Synfusion>> ongetGraph() async {
    isLoading(true);
    await apihelper
        .onNetworkRequesting(
            url: 'dashboard', methode: METHODE.get, isAuthorize: true)
        .then((response) {
      isLoading(true);
      response['evolution'].map((e) {
        graphlist.add(Synfusion.fromJson(e));
      }).toList();
      print(graphlist[0].date);
    });
    isLoading(false);
    return graphlist;
  }
}
