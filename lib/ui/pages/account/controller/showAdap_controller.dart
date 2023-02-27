// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_controller.dart';

class ShowAdaptive extends GetxController {
  final selected = ''.obs;
  late final ValueChanged<String>? ontap;
  final con = Get.put(AccountController());
  final items = ['View', 'Take photo', 'Open Gallery', 'Remove', 'Cancel'];
  void showAdapticvebottom(BuildContext context, VoidCallback callback) {
    showModalBottomSheet(
        useRootNavigator: true,
        context: context,
        builder: (context) {
          return Column(
              mainAxisSize: MainAxisSize.min,
              children: items.map((e) {
                return GestureDetector(
                  onTap: () {
                    selected.value = e;
                    selected.value == 'Open Gallery' ? callback() : null;
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        e,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: e == 'Remove'
                                ? Colors.red
                                : const Color(0xff0F50A4),
                            fontSize: 18,
                            fontFamily: 'DMSans'),
                      ),
                    ),
                  ),
                );
              }).toList());
        });
  }
}
