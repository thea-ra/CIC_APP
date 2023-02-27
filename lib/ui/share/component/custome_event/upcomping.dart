// ignore_for_file: avoid_print

import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:cic_project/ui/share/component/custome_event/custome_feature_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'custom_newevent_card.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
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
                'Feature Event',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff212525)),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: con.dataList.map((e) {
                return CustomFeatureCard(
                  image: e.cover,
                  date: e.date,
                  title: e.title,
                  interested: e.interested,
                );
              }).toList()),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 14),
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
              children: con.dataList.map((e) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      con.getEventDetail(e.id as num);
                      print(e.id);
                      context.go('/event/eventdetail');
                    });
                  },
                  child: CardNewEvent(
                    date: e.date,
                    image: e.cover,
                    image1: e.registerprofile?[0],
                    image2: e.registerprofile?[1],
                    title: e.title,
                    interested: e.interested,
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
