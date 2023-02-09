import 'package:cic_project/ui/pages/account/model/accoun/model_account.dart';
import 'package:cic_project/ui/pages/account/model/company/model_company.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';

class AccountController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    getCompanyInfo();
    super.onInit();
  }

  final currentpage = 0.obs;
  final isloading = false.obs;
  final datamemeber = AccountModel().obs;
  final companyList = <ModelCompany>[].obs;
  final companyData = ModelCompany().obs;
  final apibasehelper = ApiBaseHelper();
  final emailContoller = TextEditingController().obs;
  final company = AccountModel().obs;
  final companyController = TextEditingController().obs;
  final sloganController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final titleController = TextEditingController().obs;
  final locationController = TextEditingController().obs;
  final aboutController = TextEditingController().obs;

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

  Future<ModelCompany> getCompanyInfo() async {
    isloading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/company', methode: METHODE.get, isAuthorize: true)
          .then((res) {
        res['data'].map((e) {
          companyData.value = ModelCompany.fromJson(e);

          print((companyList[0].companyname));
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(error.bodyString);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    isloading(false);
    return companyData.value;
  }

// Update function
  Future<dynamic> updataCompany(BuildContext context, int? id) async {
    debugPrint("Function updateUser Worded");
    isloading(true);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'v4/company/createOrUpdate',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            "company_id": id,
            "company_name": companyController.value.text == ''
                ? companyData.value.companyname
                : companyController.value.text,
            "company_slogan": sloganController.value.text == ''
                ? companyData.value.companyslogan
                : sloganController.value.text,
            "phone_number": phoneController.value.text == ''
                ? companyData.value.phone
                : phoneController.value.text,
            'email': emailContoller.value.text == ''
                ? companyData.value.email
                : emailContoller.value.text,
            'address': locationController.value.text == ''
                ? companyData.value.address
                : locationController.value.text,
            'personal_interest': aboutController.value.text
          }).then((value) {
        debugPrint('value => : $value');
        fetchData();
        getCompanyInfo();
        context.go('/account');
      });
    } catch (e) {}
    isloading(false);
  }

  void collectionController() {
    companyController.value.text = companyData.value.companyname.toString();
    sloganController.value.text = companyData.value.companyslogan.toString();
    phoneController.value.text = companyData.value.phone.toString();
    emailContoller.value.text = companyData.value.email.toString();
    titleController.value.text = companyData.value.companyname.toString();
    locationController.value.text =
        datamemeber.value.companies!['logo'].toString();
  }
}
