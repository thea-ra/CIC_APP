import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_base_helper.dart';

class GlobleData extends GetxController{
  final phoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final otpController = TextEditingController().obs;

final apiBaseHelper = ApiBaseHelper();
final currentpage = 0.obs;
final isLoading= false.obs;
final selected = ''.obs;
final list = ['CIC EQUIT FUND', 'CIC FIXED INCOME FUND', 'CIC REAL ESTATE'];


}