import 'package:cic_project/ui/pages/account/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controller/account_controller.dart';

class ProfileScreen extends StatefulWidget {
  final int? id;
  final String? userName;

  const ProfileScreen({super.key, this.id, this.userName});

  @override
  State<ProfileScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ProfileScreen> {
  String? imagePicker = profiledModel.image;
  final _controller = PageController();
  final con = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
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
                          onTap: () {},
                          child: SvgPicture.asset('asset/svg/edit_white.svg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SvgPicture.asset('asset/svg/Setting.svg'),
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
                                      const Text('Marketing Manager'),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Cambodia Investors Corporation',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 48),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'asset/svg/call.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('call'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'asset/svg/Message.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Message'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'asset/svg/Locations.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Telegram'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'asset/svg/google.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('website'),
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
                          () => con.isloading.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Positioned(
                                  top: 100,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                      border: Border.all(
                                          width: 3, color: Colors.white),
                                    ),
                                    width: 100,
                                    height: 100,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(con
                                              .datamemeber.value.profile
                                              .toString()),
                                          fit: BoxFit.contain,
                                        ),
                                        border: Border.all(
                                            width: 3, color: Colors.blue),
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                        Positioned(
                          top: 130,
                          left: 90,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset('asset/svg/camara.svg'),
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
          body: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 120, left: 20, right: 20),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 26, right: 16),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'About',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Lorem pisum dolor sit amet, consectetur adpisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscpit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem pisum dolor sit amet, consectetur adpisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscpit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit .',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
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
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 30, left: 16, right: 0, bottom: 31),
                                // color: Colors.blue,
                                width: double.infinity,

                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 54,
                                      height: 54,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffE5E5E5),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                            'asset/svg/cic.svg'),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Cambodia Investors\nCorporation',
                                              style: TextStyle(
                                                  // color: AppColor.darkColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              'Beyond Investment Opportunity',
                                              style: TextStyle(
                                                fontSize: 12,
                                                // color: AppColor.mainColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () => con.isloading.value
                                          ? const Center(
                                              child:
                                                  CircularProgressIndicator())
                                          : PopupMenuButton<dynamic>(
                                              position: PopupMenuPosition.under,
                                              shape: ContinuousRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              iconSize: 25,
                                              itemBuilder: (context) {
                                                return [
                                                  PopupMenuItem(
                                                    child: ListTile(
                                                      leading: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(1.0),
                                                        child: SvgPicture.asset(
                                                            'asset/svg/cell_phone.svg'),
                                                      ),
                                                      title: Text(con
                                                          .datamemeber
                                                          .value
                                                          .phone
                                                          .toString()),
                                                    ),
                                                  ),
                                                  const PopupMenuDivider(),
                                                  PopupMenuItem(
                                                    child: ListTile(
                                                      leading: SvgPicture.asset(
                                                          'asset/svg/mail.svg'),
                                                      title: Text(con
                                                                  .datamemeber
                                                                  .value
                                                                  .email ==
                                                              ""
                                                          ? "noemail@gmail.com"
                                                          : con.datamemeber
                                                              .value.email
                                                              .toString()),
                                                    ),
                                                  ),
                                                  const PopupMenuDivider(),
                                                  PopupMenuItem(
                                                    child: ListTile(
                                                      leading: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(1.0),
                                                        child: SvgPicture.asset(
                                                            'asset/svg/Location.svg'),
                                                      ),
                                                      title: const Text(
                                                          'cic-association.com'),
                                                    ),
                                                  ),
                                                  const PopupMenuDivider(),
                                                  PopupMenuItem(
                                                    child: ListTile(
                                                      leading: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(1.0),
                                                        child: SvgPicture.asset(
                                                            'asset/svg/map.svg'),
                                                      ),
                                                      title: const Text(
                                                          'Edit company info'),
                                                    ),
                                                  ),
                                                  const PopupMenuDivider(),
                                                  PopupMenuItem(
                                                    child: ListTile(
                                                      leading: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(1.0),
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
                                                  )
                                                ];
                                              },
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      // height: 280,
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Product and Service',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sit tortor nisl fringilla porttitor viverra scelerisque. Turpis nisl et facilisis aliquam ultricies interdum lectus eget facilisis aliquam.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff0A0B09),
                                                  fontFamily: 'DMSans')),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'About',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sit tortor nisl fringilla porttitor viverra scelerisque. Turpis nisl et facilisis aliquam ultricies interdum lectus eget facilisis aliquam.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff0A0B09),
                                                  fontFamily: 'DMSans')),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 231,
                                  child: ListView.builder(
                                    itemCount: 4,
                                    controller: _controller,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PDCtsc1-RHs0tqdtxluCE1iFIwnUWcu12FxVXAAYYC3s9zfxoK8ch7nsu25c5icVAjs&usqp=CAU'),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        margin: const EdgeInsets.only(
                                            left: 20, top: 10, right: 20),
                                        width: 324,
                                        height: 100,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SmoothPageIndicator(
                                controller: _controller,
                                count: 3,
                                effect: const SlideEffect(
                                  dotHeight: 3,
                                  dotWidth: 16,
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
    );
  }

  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imagePicker = pickedFile.path;
      });
    }
  }
}
