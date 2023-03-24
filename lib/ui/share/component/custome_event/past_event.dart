import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'custom_newevent_card.dart';

class PastEvent extends StatelessWidget {
  const PastEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(EventController());
    return Obx(
      () => con.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : con.pastData != []
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          'Past Event',
                          style: TextStyle(
                              fontFamily: 'DMSans',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff212525)),
                        ),
                      ),
                      Column(
                        children: con.pastData.map((e) {
                          return GestureDetector(
                            onTap: () {
                              print('Event Ids : ${e.id}');
                              con.getPastEventDetail(e.id as num);
                              context.go('/event/pasteventdetail');
                            },
                            child: CardNewEvent(
                              date: e.date,
                              image: e.cover,
                              image1: e.cover,
                              image2: e.cover,
                              title: e.title,
                              interested: e.interested,
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                )
              : Column(
                  children: [
                    SvgPicture.asset('asset/svg/empty_state.svg'),
                    const Text(
                      'No Events',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff212525)),
                    ),
                  ],
                ),
    );
  }
}
