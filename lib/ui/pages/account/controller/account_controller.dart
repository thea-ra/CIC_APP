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

  final currentpage = 0.obs;
  final isloading = false.obs;
  final datamemeber = AccountModel().obs;
  final apibasehelper = ApiBaseHelper();
  final emailContoller = TextEditingController().obs;
  final company = AccountModel().obs;
  final companyController = TextEditingController().obs;
  final sloganController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final titleController = TextEditingController().obs;
  final locationController = TextEditingController().obs;
  final lastnameController = TextEditingController().obs;

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

// Update function
  @override
  Future<dynamic> updateUser(BuildContext context) async {
    debugPrint("Function updateUser Worded");
    isloading(true);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'v4/user',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            "company_name": "ABC",
            "title": titleController.value.text,
            "phone": phoneController.value.text,
            'email': emailContoller.value.text,
            'last_name': lastnameController.value.text,
          }).then((value) {
        debugPrint('value => : $value');
        fetchData();
        // context.go('/account');
      });
    } catch (e) {}
    isloading(false);
  }

  void collectionController() {
    companyController.value.text = datamemeber.value.firstname.toString();
    sloganController.value.text = datamemeber.value.fullname.toString();
    phoneController.value.text = datamemeber.value.phone.toString();
    emailContoller.value.text = datamemeber.value.email.toString();
    titleController.value.text = datamemeber.value.title.toString();
    locationController.value.text =
        datamemeber.value.companies!['logo'].toString();
  }
}
