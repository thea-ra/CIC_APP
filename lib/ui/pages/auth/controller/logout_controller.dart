import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../util/helper/local_storage.dart';



class Logout extends GetxController{

Future logout(BuildContext context) async {
    await LocalStorage.removeStorage(key: 'token').then((value) {
    context.go('');
    });
  }
}