// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../share/component/no_description.dart';
import '../../auth/controller/logout_controller.dart';
import '../controller/showAdap_controller.dart';
import '../controller/account_controller.dart';

class ProfileScreen extends StatefulWidget {
  final int? id;
  final String? userName;

  const ProfileScreen({super.key, this.id, this.userName});

  @override
  State<ProfileScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ProfileScreen> {
  // String? imagePicker = profiledModel.image;
  final con = Get.put(AccountController());
  final showadap = Get.put(ShowAdaptive());

  @override
  Widget build(BuildContext context) {
    var phone = con.companyData.value.phone;
    var email = con.companyData.value.email;
    var address = con.companyData.value.address;
    final logout = Logout();
    // print(con.getUser());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: true,
                  excludeHeaderSemantics: true,
                  backgroundColor: const Color(0xff0F50A4),
                  leading: const Text(''),
                  expandedHeight: 380,
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InkWell(
                          onTap: () {
                            con.user.value = con.datamemeber.value;
                            context.go('/user');
                          },
                          child: SvgPicture.asset('asset/svg/edit_white.svg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InkWell(
                          onTap: () {
                            logout.logout(context);
                          },
                          child: SvgPicture.asset('asset/svg/Setting.svg')),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    //===========Body Cicle Profile==============
                    background: Stack(
                      children: [
                        //////
                        Container(
                          width: double.infinity,
                          height: 290,
                          margin: const EdgeInsets.only(top: 150),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 23, 74, 116),
                                  spreadRadius: 20,
                                  blurRadius: 50,
                                  offset: Offset(0, -9)),
                            ],
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 65),
                                  child: Center(
                                    child: Obx(
                                      () => Text(
                                        con.datamemeber.value.fullname
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset('asset/svg/sheild.svg'),
                                      Obx(() => con.isloading.value
                                          ? const Center(
                                              child:
                                                  CircularProgressIndicator())
                                          : Text(con.datamemeber.value.title
                                              .toString())),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 48),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          launch(
                                              'sms:${con.companyData.value.phone}');
                                        },
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'asset/svg/call.svg'),
                                            const Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Text('call'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Obx(
                                            () => SvgPicture.asset(
                                                'asset/svg/Message.svg',
                                                color: con.companyData.value
                                                            .messenger ==
                                                        ''
                                                    ? Colors.grey
                                                    : null),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text(
                                              'Message',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Obx(
                                            () => SvgPicture.asset(
                                                'asset/svg/Locations.svg',
                                                color: con.companyData.value
                                                            .telegram ==
                                                        ''
                                                    ? Colors.grey
                                                    : null),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Telegram'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'asset/svg/google.svg',
                                              color: con.companyData.value
                                                          .website ==
                                                      ''
                                                  ? Colors.grey
                                                  : null),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text(
                                              'website',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => Positioned(
                            top: 100,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                border:
                                    Border.all(width: 3, color: Colors.white),
                              ),
                              width: 100,
                              height: 100,
                              child: (con.datamemeber.value.profile != null)
                                  ? CachedNetworkImage(
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      imageUrl: con.datamemeber.value.profile!,
                                      fit: BoxFit.contain,
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                                  : Image.asset('asset/image/aba.png'),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 130,
                          left: 90,
                          right: 0,
                          child: GestureDetector(
                            onTap: () async {
                              showadap.showAdapticvebottom(
                                  context, con.getFromGallery);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset('asset/svg/camara.svg'),
                            ),
                          ),
                        )
                      ],
                    ),
                    //==============================================
                  ),
                ),
              )
            ];
          },
          body: Obx(
            () => SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 120, left: 20, right: 20),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: TabBar(
                            labelColor: Colors.black,
                            indicatorColor: Colors.red,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            tabs: [
                              Tab(
                                text: 'Persional Profile',
                              ),
                              Tab(
                                text: 'Company Profile ',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.pink,
                        color: const Color(0xffFFFFFF),
                        width: double.infinity,
                        height: 610,
                        child: TabBarView(
                          children: [
                            con.datamemeber.value.about == ''
                                ? Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 20, right: 20),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 300,
                                          child: Image.asset(
                                              'asset/image/reading.png'),
                                        ),
                                      ),
                                      const Text(
                                        'No Descriptions!',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff111111)),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'You have not completed your personal profile yet, please go to edit butto to fill in your personal profile',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff111111)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 26, right: 16),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'About',
                                              style: TextStyle(
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              '${con.datamemeber.value.title}',
                                              textAlign: TextAlign.justify,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff0A0B09),
                                                  fontFamily: 'DMSans'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                            if (con.companyData.value.companyname == '')
                              InkWell(
                                onTap: () {
                                  context.go('/addcompany');
                                },
                                child: const NoDescription(
                                  text: 'Add Company',
                                  svgpic: 'asset/svg/add.svg',
                                ),
                              )
                            else
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 30,
                                        left: 16,
                                        right: 0,
                                        bottom: 31),
                                    // color: Colors.blue,
                                    width: double.infinity,

                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 54,
                                          height: 54,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  '${con.companyData.value.companylogo}',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: const Color.fromARGB(
                                                  255, 207, 176, 176),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                con.companyData.value
                                                            .companyname !=
                                                        ''
                                                    ? Text(
                                                        '${con.companyData.value.companyname}',
                                                        style: const TextStyle(
                                                            // color: AppColor.darkColor,
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff0A0B09),
                                                            fontFamily:
                                                                'DMSans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      )
                                                    : Container(),
                                                con.companyData.value
                                                            .companyslogan !=
                                                        ''
                                                    ? Text(
                                                        '${con.companyData.value.companyslogan}',
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'DMSans',
                                                          // color: AppColor.mainColor,
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                        PopupMenuButton<dynamic>(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          icon: const Icon(Icons.more_vert),
                                          position: PopupMenuPosition.under,
                                          itemBuilder: (context) {
                                            return [
                                              if (phone != null && phone != '')
                                                PopupMenuItem(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      launch(
                                                          'tel:${con.companyData.value.phone}');
                                                    },
                                                    child: ListTile(
                                                      leading: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(1.0),
                                                        child: SvgPicture.asset(
                                                            'asset/svg/cell_phone.svg'),
                                                      ),
                                                      title: Text(con
                                                          .companyData
                                                          .value
                                                          .phone
                                                          .toString()),
                                                    ),
                                                  ),
                                                ),
                                              if (email != null && email != '')
                                                const PopupMenuDivider(),
                                              if (email != null && email != '')
                                                PopupMenuItem(
                                                  child: ListTile(
                                                    leading: SvgPicture.asset(
                                                        'asset/svg/mail.svg'),
                                                    title: Text(con
                                                        .companyData.value.email
                                                        .toString()),
                                                  ),
                                                ),
                                              if (address != null &&
                                                  address != '')
                                                const PopupMenuDivider(),
                                              if (address != null &&
                                                  address != '')
                                                PopupMenuItem(
                                                  child: ListTile(
                                                    leading: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1.0),
                                                      child: SvgPicture.asset(
                                                          'asset/svg/Location.svg'),
                                                    ),
                                                    title: Text(con.companyData
                                                        .value.address
                                                        .toString()),
                                                  ),
                                                ),
                                              const PopupMenuDivider(),
                                              PopupMenuItem(
                                                child: InkWell(
                                                  onTap: () {
                                                    con.compareVal.value =
                                                        con.companyData.value;
                                                    context.go('/update');
                                                  },
                                                  child: ListTile(
                                                    leading: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1.0),
                                                      child: SvgPicture.asset(
                                                        'asset/svg/edits.svg',
                                                        color: const Color(
                                                            0xff0F50A4),
                                                      ),
                                                    ),
                                                    title: const Text(
                                                      'Edit company info',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0F50A4)),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ];
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
