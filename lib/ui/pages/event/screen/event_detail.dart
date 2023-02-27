import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../share/component/custome_event/custom_event_detail.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(EventController());
    return Scaffold(
      body: Obx(() => con.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : const CustomeEventDetail()),
    );
  }
}
