import 'dart:ui';

import 'package:cic_project/ui/share/component/custome_event/custom_detail_info.dart';
import 'package:cic_project/ui/share/component/custome_event/detail_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../pages/event/controller/event_controller.dart';
import '../../widget/showbottomsheet.dart';
import '../button.dart';
import 'custome_addmemer.dart';
import 'custome_joiner.dart';

class CustomeEventDetail extends StatefulWidget {
  const CustomeEventDetail({super.key});

  @override
  State<CustomeEventDetail> createState() => _CustomeEventDetailState();
}

class _CustomeEventDetailState extends State<CustomeEventDetail> {
  final con = Get.put(EventController());
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
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
                                left: 15, right: 15, top: 20),
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
                            child: DetailInfo(
                              svgpic: 'asset/svg/locate.svg',
                              eventby: 'Location',
                              info: con.eventdetail.value.location,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 20),
                            child: GestureDetector(
                              onTap: () {
                                showButtomSheet(context,
                                    '${con.eventdetail.value.registernumber}');
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomeJoinerEvent(
                                    joiner:
                                        con.eventdetail.value.registernumber,
                                    image: con
                                        .eventdetail.value.registerprofile![0],
                                    image2: con
                                        .eventdetail.value.registerprofile![2],
                                    image1: con
                                        .eventdetail.value.registerprofile![1],
                                  ),
                                  SvgPicture.asset(
                                    'asset/svg/arrow_award.svg',
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const AddMemeber(),
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
        Padding(
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
      ],
    );
  }
}
