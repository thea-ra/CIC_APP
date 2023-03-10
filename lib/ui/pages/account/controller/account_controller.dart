// ignore_for_file: avoid_print, empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:cic_project/ui/pages/account/model/accoun/model_account.dart';
import 'package:cic_project/ui/pages/account/model/company/model_company.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../util/helper/api_base_helper.dart';

class AccountController extends GetxController {
  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    fetchData();
    getCompanyInfo();
    super.onInit();
  }

  final ischeck = false.obs;
  final isControll = false.obs;
  final currentpage = 0.obs;
  final isloading = false.obs;
  final datamemeber = AccountModel().obs;
  final companyList = <ModelCompany>[].obs;
  final companyData = ModelCompany().obs;
  final apibasehelper = ApiBaseHelper();
  final user = AccountModel().obs;
  final compareVal = ModelCompany().obs;
  File? fileimage;
  File? imageUpload;

  //final compareValcopy = ModelCompany().obs;

  //Get data from api
  Future<AccountModel> fetchData() async {
    isloading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/user', methode: METHODE.get, isAuthorize: true)
          .then((res) {
        datamemeber.value = AccountModel.fromJson(res);
        debugPrint('user====${datamemeber.value.customerid}===========');
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
            "company_name": compareVal.value.companyname,
            "company_slogan": compareVal.value.companyslogan,
            "phone_number": compareVal.value.phone,
            'email': compareVal.value.email,
            'address': compareVal.value.address,
            'company_product_and_service':
                compareVal.value.companyproductandservice,
            'personal_interest': compareVal.value.personalinterest,
          }).then((value) {
        debugPrint('value => : $value');
        fetchData();
        getCompanyInfo();
      });
    } catch (e) {}
    isloading(false);
  }

  Future<dynamic> updateUser(BuildContext context, int? id) async {
    debugPrint("Function updateUser Worded");
    isloading(true);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'v4/member-profile/update',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            'member_id': id,
            'full_name': user.value.fullname,
            'title': user.value.title,
            'phone': user.value.phone,
            'email': user.value.email,
            'website': user.value.website,
            'about': user.value.about,
          }).then((value) {
        debugPrint('value => : $value');
        fetchData();
        context.go('/account');
      });
    } catch (e) {}
    isloading(false);
  }

  // Get Image

  getFromGallery() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      fileimage = File(pickedFile.path);
    }
    await updateImage();
  }

  // update image
  Future<void> updateImage() async {
    List<int> images = fileimage!.readAsBytesSync();
    String base64image = base64Encode(images);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'user/change-profile',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            'profile': 'data:image/png;base64,$base64image',
          }).then((res) {
        debugPrint('Success');
        print(base64image.toString());
      });
    } catch (e) {}
  }

  getCompanylog() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      imageUpload = File(pickedFile.path);
    }
    await updateCompanyLogo(companyData.value.id);
  }

  // update image
  Future<void> updateCompanyLogo(int? id) async {
    List<int> image = imageUpload!.readAsBytesSync();
    String base64image = base64Encode(image);
    try {
      await apibasehelper.onNetworkRequesting(
          url: 'v4/company/createOrUpdate',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            'company_id': id,
            'company_logo': 'data:image/png;base64,$base64image',
          }).then((res) {
        debugPrint('Success');
        print(companyData.value.id);
      });
    } catch (e) {}
  }
}
