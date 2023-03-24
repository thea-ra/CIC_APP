import 'dart:ui';

import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../share/component/button.dart';
import '../../../share/component/custome_event/custom_detail_info.dart';
import '../../../share/component/custome_event/custome_addmemer.dart';
import '../../../share/component/custome_event/custome_button_submit.dart';
import '../../../share/component/custome_event/custome_invite_member.dart';
import '../../../share/component/custome_event/custome_joiner.dart';
import '../../../share/component/custome_event/custome_registered.dart';
import '../../../share/component/custome_event/detail_header.dart';
import '../controller/registered_member_controller.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    final con = Get.put(EventController());

    final getcon = Get.put(RegisterContoller());
    ScrollController scrollController = ScrollController();
    bool isScroll = false;
    @override
    void initState() {
      scrollController.addListener(() {
        if (scrollController.offset >= 50) {
          setState(() {
            isScroll = true;
          });
        } else {
          setState(() {
            isScroll = false;
          });
        }
      });
      super.initState();
    }

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 255,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        // image: DecorationImage(
                        //   image: NetworkImage('${con.eventdetail.value.cover}'),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                      child: Image.network(
                        '${con.eventdetail.value.cover}',
                        fit: BoxFit.cover,
                        //color: Colors.grey.withOpacity(0.01),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40.0,
                        sigmaY: 40.0,
                      ),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.0)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 254,
                      color: Colors.black12.withOpacity(0.2),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 64),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.pop();
                                },
                                child: Image.asset(
                                  'asset/image/back.png',
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(
                                'asset/image/menu.png',
                                color: Colors.white,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 26),
                            child: Container(
                              width: double.infinity,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          '${con.eventdetail.value.cover}'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 24),
                            child: Text(
                              '${con.eventdetail.value.title}',
                              style: const TextStyle(
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              children: [
                                SvgPicture.asset('asset/svg/online.svg'),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    con.eventdetail.value.isopen == true
                                        ? 'Online event'
                                        : 'Offline event',
                                    style: const TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    '${con.eventdetail.value.posted} event',
                                    style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 12,
                                        color: con.eventdetail.value.posted ==
                                                'open'
                                            ? const Color(0xff0A0B09)
                                            : const Color.fromARGB(
                                                255, 73, 70, 66)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 15, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset('asset/svg/interest.svg'),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 9),
                                      child: Text(
                                        'Interested',
                                        style: TextStyle(
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset('asset/svg/going.svg'),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Going',
                                        style: TextStyle(
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                        'asset/svg/notinterest.svg'),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Ignore',
                                        style: TextStyle(
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Detail',
                              style: TextStyle(
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: DetailInfo(
                              svgpic: 'asset/svg/account.svg',
                              eventby: 'Event by',
                              info: con.eventdetail.value.eventby,
                            ),
                          ),
                          DetailInfo(
                            svgpic: 'asset/svg/date.svg',
                            eventby: 'Date and time',
                            info:
                                '${con.eventdetail.value.fromtime} - ${con.eventdetail.value.totime} ',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: con.eventdetail.value.location != null
                                ? DetailInfo(
                                    svgpic: 'asset/svg/locate.svg',
                                    eventby: 'Location',
                                    info: con.address,
                                  )
                                : const Text(''),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 20),
                            child: GestureDetector(
                              onTap: () {
                                getcon.getRegisteredUser(
                                    con.eventdetail.value.id!);
                                CupertinoScaffold.showCupertinoModalBottomSheet(
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) =>
                                        const CustomeRegistered());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomeJoinerEvent(
                                    joiner:
                                        con.eventdetail.value.registernumber,
                                    image: con.eventdetail.value
                                            .registerprofile!.isNotEmpty
                                        ? con.eventdetail.value
                                            .registerprofile![0]
                                        : '',
                                    image2: con.eventdetail.value
                                            .registerprofile!.isNotEmpty
                                        ? con.eventdetail.value
                                            .registerprofile![1]
                                        : '',
                                    image1: con.eventdetail.value
                                            .registerprofile!.isNotEmpty
                                        ? con.eventdetail.value
                                            .registerprofile![2]
                                        : '',
                                  ),
                                  SvgPicture.asset(
                                    'asset/svg/arrow_award.svg',
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                getcon.index.value = 2000;
                                getcon.inviteUser();
                                CupertinoScaffold.showCupertinoModalBottomSheet(
                                    enableDrag: false,
                                    useRootNavigator: false,
                                    context: context,
                                    builder: (context) =>
                                        const CustomeMemmerInvite());
                              },
                              child: const AddMemeber()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              isScroll
                  ? DetailHeader(
                      title: con.eventdetail.value.title,
                    )
                  : const Text('')
            ],
          ),
        ),
        Obx(() => con.eventdetail.value.isregister!
            ? Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CustomeButton(
                        text: 'Add Guest',
                        color: Color(0xff0F50A4),
                      ),
                    ),
                    CustomeButton(
                      text: 'Check in',
                      color: Color(0xffFFFFFF),
                      background: Color(0xff0F50A4),
                    ),
                  ],
                ),
              )
            : createButton('Register Now', const Color(0xff0F50A4),
                const Color(0xffFFFFFF)))
      ],
    ));
  }
}
