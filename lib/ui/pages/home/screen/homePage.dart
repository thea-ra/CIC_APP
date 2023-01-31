// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_project/ui/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../util/helper/globle_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List image = ['asset/image/reference.png', 'asset/image/reference.png'];
int activePage = 0;
// ignore: unused_element
late PageController _pageController;

class _HomeScreenState extends State<HomeScreen> {
  final pref = Get.put(GlobleData());
  // final con = Get.put(Logout());
  final data = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    // final logout = Get.put(Logout());
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 88,
            width: double.infinity,
            color: const Color(0xff0F50A4),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 56, left: 20, bottom: 9, right: 21),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/svg/cic_logo.svg',
                    width: 44.5,
                    height: 22.75,
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.5),
                    child: Text(
                      'Mobile',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF2F2F2)),
                    ),
                  )),
                  SvgPicture.asset(
                    'asset/svg/Bell.svg',
                    width: 20.63,
                    height: 24.38,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // logout.logout(context);
                      },
                      child: SvgPicture.asset(
                        'asset/svg/air.svg',
                        width: 18.67,
                        height: 20.68,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Carosel slider
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 160,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  pref.currentpage.value = index;
                },
                aspectRatio: 2.0,
                initialPage: 3,
              ),
              items: image.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 160,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                              image: AssetImage(i), fit: BoxFit.cover)),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: AnimatedSmoothIndicator(
                activeIndex: pref.currentpage.value,
                count: 3,
                effect: const ExpandingDotsEffect(dotWidth: 6, dotHeight: 6),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 19),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFFFF)),
                child: Obx(
                  () => data.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 30),
                              child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          childAspectRatio: 3 / 2,
                                          mainAxisSpacing: 20),
                                  itemCount: data.homeList.length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    final mydata = data.homeList[index];
                                    String selected = '';
                                    return GestureDetector(
                                      onTap: () {
                                        selected = mydata.label.toString();
                                        selected == 'Investment'
                                            ? context.go('/myinvest')
                                            : null;
                                      },
                                      child: Column(
                                        children: [
                                          SizedBox(
                                              width: 30,
                                              height: 30,
                                              child: SvgPicture.network(
                                                  mydata.icon.toString())),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 14),
                                            child: Text(
                                              mydata.label.toString(),
                                              style: const TextStyle(
                                                  fontFamily: 'DMSans'),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 80, bottom: 90),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    'asset/svg/horizontalline.svg',
                                    width: 1,
                                    height: 111,
                                  ),
                                  SvgPicture.asset(
                                    'asset/svg/horizontalline.svg',
                                    width: 1,
                                    height: 80,
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'asset/image/vert.jpg',
                                height: double.infinity,
                                width: 1,
                              ),
                            )
                          ],
                        ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
