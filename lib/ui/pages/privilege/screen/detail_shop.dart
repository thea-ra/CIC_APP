import 'package:cic_project/ui/pages/privilege/controller/previlege_controller.dart';
import 'package:cic_project/ui/share/component/custom_favourite.dart';
import 'package:cic_project/util/color/app_color.dart';
import 'package:cic_project/util/textstyle/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class DetailShop extends StatefulWidget {
  // final String? name;
  // final String? des;
  // final String? discount;
  // final Image? image;
  const DetailShop({
    super.key,
  });

  @override
  State<DetailShop> createState() => _DetailShopState();
}

class _DetailShopState extends State<DetailShop> with TickerProviderStateMixin {
  late TabController _tabController;
  final con = Get.put(SliderImageController());
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // debugPrint("${con.isloadingShopId.value}");
          GetBuilder<SliderImageController>(
              init: SliderImageController(),
              builder: (con) {
                return DefaultTabController(
                  length: _tabController.length,
                  child: NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.white,
                          pinned: true,
                          // floating: false,
                          title: Container(
                              width: double.infinity,
                              height: 150,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        AppColor.darkGrey25.withOpacity(0.8),
                                    maxRadius: 21,
                                    child: IconButton(
                                      onPressed: () {
                                        context.go('/previlege');
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios_new,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  GetBuilder<SliderImageController>(
                                    init: SliderImageController(),
                                    initState: (_) {},
                                    builder: (con) {
                                      return CustomFavorite(
                                        height: 40,
                                        width: 40,
                                        logoHeight1: 25,
                                        logoHeight2: 25,
                                        backgroudColor: AppColor.darkGrey25
                                            .withOpacity(0.8),
                                        isfav:
                                            !con.shopmodelId.value.isFavorite!,
                                        onPressed: () {
                                          con.shopmodelId.value.isFavorite =
                                              !con.shopmodelId.value
                                                  .isFavorite!;
                                          con.updateFav(
                                            id: con.shopmodelId.value.id
                                                .toString(),
                                            boolFav: con
                                                .shopmodelId.value.isFavorite,
                                          );
                                          con.update();
                                        },
                                      );
                                    },
                                  ),
                                ],
                              )),
                          centerTitle: true,
                          expandedHeight: 500,
                          flexibleSpace: FlexibleSpaceBar(
                            // collapseMode: CollapseMode.none,
                            background: Stack(
                              children: [
                                Obx(() => SizedBox(
                                      width: double.infinity,
                                      // height: 270,
                                      // color: Colors.black,
                                      child: Column(
                                        children: [
                                          Image.network(
                                            '${con.shopmodelId.value.shopLogo}',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          )
                                        ],
                                      ),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 200),
                                  width: double.infinity,
                                  height: 400,
                                  // color: Colors.red,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 1,
                                            )
                                          ],
                                          color: AppColor.darkGrey50,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Obx(() => CircleAvatar(
                                                      backgroundImage: NetworkImage(
                                                          '${con.shopmodelId.value.shopLogo}'),
                                                      minRadius: 28,
                                                    )),
                                                const SizedBox(width: 12),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Obx(() => Text(
                                                          '${con.shopmodelId.value.status}',
                                                          style: CustomTextstyle
                                                              .sizeABlack
                                                              .copyWith(
                                                                  fontSize: 12,
                                                                  color: con.shopmodelId.value.status ==
                                                                          'Closed'
                                                                      ? Colors
                                                                          .red
                                                                      : Colors
                                                                          .green),
                                                        )),
                                                    SizedBox(
                                                      child: Obx(() => Text(
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            '${con.shopmodelId.value.shopNameInEnglish}',
                                                            style: CustomTextstyle
                                                                .sizeABlack
                                                                .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                          )),
                                                    ),
                                                    Obx(() => SizedBox(
                                                          child: Text(
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            '${con.shopmodelId.value.slogan}',
                                                            style: CustomTextstyle
                                                                .sizeABlack
                                                                .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: AppColor
                                                                        .darkGrey25),
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 10),
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                '20%',
                                                style: CustomTextstyle
                                                    .sizeABlack
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        color:
                                                            AppColor.redColors),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 2,
                                              offset: Offset.zero,
                                            )
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              children: [
                                                const CircleAvatar(),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Current Point',
                                                      style: CustomTextstyle
                                                          .sizeABlack
                                                          .copyWith(
                                                              color: AppColor
                                                                  .darkGrey25),
                                                    ),
                                                    const Text(
                                                      '1,000',
                                                      style: CustomTextstyle
                                                          .sizeABlack,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(15),
                                              height: 100,
                                              width: 1,
                                              color: Colors.grey,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Redeem to pay',
                                                  style: CustomTextstyle.sizeA
                                                      .copyWith(
                                                          color: Colors.blue),
                                                ),
                                                const Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  size: 20,
                                                  color: Colors.blue,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        // color: Colors.blue,
                                        width: double.infinity,
                                        height: 100,
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              // width: 200,
                                              child: Obx(
                                                () => Text(
                                                  style: CustomTextstyle
                                                      .sizeABlack
                                                      .copyWith(
                                                          color: AppColor
                                                              .darkGrey),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 3,
                                                  '${con.shopmodelId.value.fullAddress}',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SliverPersistentHeader(
                          floating: false,
                          pinned: true,
                          delegate: _SliverAppBarDelegate(
                            TabBar(
                              // indicatorPadding: const EdgeInsets.all(),
                              indicator: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              controller: _tabController,
                              labelStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background),
                              // indicatorColor: Theme.of(context).hintColor,
                              indicatorColor: Colors.transparent,
                              labelColor: AppColor.darkGrey,
                              unselectedLabelColor: AppColor.darkGrey,
                              tabs: const [
                                Tab(
                                  text: "Service",
                                ),
                                Tab(text: "Info"),
                                Tab(text: "Photo"),
                              ],
                            ),
                          ),
                        ),
                        //
                      ];
                    },
                    body: TabBarView(
                      controller: _tabController,
                      children: const [
                        Icon(Icons.flight, size: 350),
                        Icon(Icons.directions_transit, size: 350),
                        Icon(Icons.directions_car, size: 350),
                      ],
                    ),
                  ),
                );
              }),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            margin: const EdgeInsets.all(
              20,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset.zero)
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: AppColor.darkGrey50.withOpacity(0.8),
            ),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.location_on, size: 30),
                Icon(Icons.phone_in_talk_outlined, size: 30),
                Icon(Icons.telegram_sharp, size: 30),
              ],
            ),
          )),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      // height: 200,
      decoration: BoxDecoration(
        color: AppColor.darkGrey25.withOpacity(0.6),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 1,
          bottom: 1,
          left: 1,
          right: 1,
        ),
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
