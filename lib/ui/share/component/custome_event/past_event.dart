import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_newevent_card.dart';

class PastEvent extends StatelessWidget {
  const PastEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(EventController());
    return Obx(
      () => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'New Event',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff212525)),
              ),
            ),
            Column(
              children: con.pastData.map((e) {
                return CardNewEvent(
                  date: e.date,
                  image: e.cover,
                  image1: e.registerprofile?[0],
                  image2: e.cover,
                  title: e.title,
                  interested: e.interested,
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
