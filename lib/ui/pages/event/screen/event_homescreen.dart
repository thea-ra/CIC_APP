// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../share/component/custome_event/custom_topbar.dart';
import '../../../share/component/custome_event/past_event.dart';
import '../../../share/component/custome_event/upcomping.dart';
import '../../account/controller/account_controller.dart';
import '../../account/controller/showAdap_controller.dart';

class EventHomeScreen extends StatefulWidget {
  const EventHomeScreen({super.key});

  @override
  State<EventHomeScreen> createState() => _EventHomeScreenState();
}

class _EventHomeScreenState extends State<EventHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final con = Get.put(AccountController());
    final showadap = Get.put(ShowAdaptive());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0F50A4),
        title: Row(children: [
          SvgPicture.asset('asset/svg/cic_logo.svg'),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text('Event'),
          )
        ]),
      ),
      body: Obx(
        () => con.isloading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CutomeTopbar(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 25, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TabBar(
                          physics: const AlwaysScrollableScrollPhysics(),
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          controller: _tabController,

                          // give the indicator a decoration (color and border radius)
                          indicator: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white38.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 14,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            color: const Color(0xffD8E2EE),
                          ),
                          labelColor: const Color(0xff0F50A4),
                          unselectedLabelColor: Colors.black,
                          tabs: const [
                            // first tab [you can add an icon using the icon property]
                            Tab(
                              text: 'Up coming',
                            ),

                            // second tab [you can add an icon using the icon property]
                            Tab(
                              text: 'Past',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.pink,
                        color: const Color(0xffFFFFFF),
                        width: double.infinity,
                        child: TabBarView(
                          controller: _tabController,
                          children: const [Upcoming(), PastEvent()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
