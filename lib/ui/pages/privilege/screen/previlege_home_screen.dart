import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_project/ui/pages/privilege/controller/previlege_controller.dart';
import 'package:cic_project/ui/pages/privilege/screen/ios_first_page.dart';
import 'package:cic_project/ui/pages/privilege/screen/ios_second_page.dart';
import 'package:cic_project/util/color/app_color.dart';
import 'package:cic_project/util/textstyle/custom_textstyle.dart';
import 'package:cic_project/widget/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PrivilageHomePage extends StatefulWidget {
  final list = [1, 2, 3, 4, 8, 4, 5, 6, 78];
  PrivilageHomePage({super.key});

  @override
  State<PrivilageHomePage> createState() => _NewState();
}

class _NewState extends State<PrivilageHomePage>
    with SingleTickerProviderStateMixin {
  final conPrevilege = Get.put(SliderImageController());
  List image = ['asset/image/reference.png', 'asset/image/reference.png'];
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  int _selectedIndexValue = 0;

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: const Icon(Icons.arrow_back)),
        context: context,
        widgetTitle: Row(
          children: [
            SvgPicture.asset('asset/svg/cic logo.svg'),
            const SizedBox(width: 10),
            const Text('Privilage'),
          ],
        ),
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset('asset/svg/clocks.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => conPrevilege.isloadingImage.value
                  ? Shimmer.fromColors(
                      period: const Duration(seconds: 2),
                      baseColor: Colors.grey.withOpacity(0.25),
                      highlightColor: Colors.white.withOpacity(0.6),
                      child: Container(
                        height: 160,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  : CarouselSlider(
                      items: conPrevilege.sliderImageModelList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 160,
                              width: double.infinity,
                              // margin: const EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage('${i.image}'),
                                    fit: BoxFit.cover),
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 400),
                        onPageChanged: (index, reason) {
                          conPrevilege.current.value = index;
                        },
                        height: 160,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        aspectRatio: 2.0,
                        initialPage: 3,
                      ),
                    ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => conPrevilege.isloadingImage.value
                  ? Shimmer.fromColors(
                      period: const Duration(seconds: 2),
                      baseColor: Colors.grey.withOpacity(0.25),
                      highlightColor: Colors.white.withOpacity(0.6),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 1,
                        count: 1,
                        effect: const ExpandingDotsEffect(
                            dotWidth: 6, dotHeight: 6),
                      ))
                  : AnimatedSmoothIndicator(
                      activeIndex: conPrevilege.current.value,
                      count: conPrevilege.sliderImageModelList.length,
                      effect:
                          const ExpandingDotsEffect(dotWidth: 6, dotHeight: 6),
                    ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: CustomTextstyle.sizeB.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Sell All',
                        style: CustomTextstyle.sizeB.copyWith(
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(
                      () => conPrevilege.isloadingCate.value
                          ? Shimmer.fromColors(
                              direction: ShimmerDirection.ltr,
                              period: const Duration(seconds: 4),
                              baseColor: Colors.grey.withOpacity(0.25),
                              highlightColor: Colors.white.withOpacity(0.6),
                              child: Row(
                                children: conPrevilege.categoryModelList
                                    .map(
                                      (e) => Stack(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              // image: DecorationImage(
                                              //     image: NetworkImage(
                                              //         'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg'),
                                              //     fit: BoxFit.cover),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            margin: const EdgeInsets.only(
                                                right: 12, top: 20),
                                            width: 170,
                                            height: 80,
                                            // child: Text("${e.bitLength}"),
                                          ),
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          : Row(
                              children: conPrevilege.categoryModelList
                                  .map(
                                    (e) => Stack(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            // image: DecorationImage(
                                            //     image: NetworkImage(
                                            //         'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg'),
                                            //     fit: BoxFit.cover),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          margin: const EdgeInsets.only(
                                              right: 12, top: 20),
                                          width: 170,
                                          height: 80,
                                          // child: Text("${e.bitLength}"),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          right: 30,
                                          child:
                                              conPrevilege.isloadingCate.value
                                                  ? const Text('data')
                                                  : Image(
                                                      image: NetworkImage(
                                                          '${e.image}',
                                                          scale: 5),
                                                    ),
                                        ),
                                        Positioned(
                                          top: 30,
                                          left: 10,
                                          child: SizedBox(
                                            width: 102,
                                            child: Text(
                                              '${e.name}',
                                              style: CustomTextstyle.sizeB
                                                  .copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                  ),
                  // SizedBox(
                  //   child: ListView(
                  //     physics: const NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.vertical,
                  //     children: <Widget>[
                  //       CupertinoSlidingSegmentedControl(
                  //         groupValue: _selectedIndexValue,
                  //         children: {
                  //           0: Container(
                  //             margin: const EdgeInsets.all(4),
                  //             child: const Text('Home'),
                  //           ),
                  //           1: Container(
                  //             margin: const EdgeInsets.all(4),
                  //             child: const Text('Bar'),
                  //           ),
                  //         },
                  //         onValueChanged: (value) {
                  //           setState(() {
                  //             _selectedIndexValue = int.parse(value.toString());
                  //           });
                  //         },
                  //       ),
                  //       _selectedIndexValue == 0
                  //           ? const IosFirstPage()
                  //           : const IosSecondPage(),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    // color: Colors.red,
                    child: CupertinoSlidingSegmentedControl(
                      groupValue: _selectedIndexValue,
                      children: {
                        0: Container(
                          margin: const EdgeInsets.all(4),
                          child: const Text('Home'),
                        ),
                        1: Container(
                          margin: const EdgeInsets.all(4),
                          child: const Text('Favourite'),
                        ),
                      },
                      onValueChanged: (value) {
                        setState(() {
                          // conPrevilege.shopmodelList.clear();
                          // conPrevilege.getShop();
                          _selectedIndexValue = int.parse(value.toString());
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          '${conPrevilege.shopmodelList.length} Stores',
                          style: CustomTextstyle.sizeABlack
                              .copyWith(color: AppColor.darkGrey25),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.mainColor.withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            width: 80,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('asset/svg/filter.svg'),
                                Text(
                                  'Filter',
                                  style: CustomTextstyle.sizeB
                                      .copyWith(color: AppColor.mainColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            minRadius: 16,
                            backgroundColor:
                                AppColor.mainColor.withOpacity(0.1),
                            child: const Icon(Icons.search_rounded),
                          ),
                        ],
                      ),
                    ],
                  ),

                  _selectedIndexValue == 0
                      ? const IosFirstPage()
                      : const IosSecondPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class IosFirstPage extends StatefulWidget {
//   const IosFirstPage({Key? key}) : super(key: key);

//   @override
//   State<IosFirstPage> createState() => _IosFirstPageState();
// }

// class _IosFirstPageState extends State<IosFirstPage> {
//   @override
//   void initState() {
//     conPrevilege.getShop(onSelect: 'Home');
//     // TODO: implement initState
//     super.initState();
//   }

//   final conPrevilege = Get.put(SliderImageController());

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       // height: 100,
//       // color: Colors.red,
//       child: Obx(
//         () => conPrevilege.isloadingShop.value
//             ? Column(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   ...conPrevilege.shopmodelList
//                       .map(
//                         (element) => Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(10),
//                             ),
//                           ),
//                           margin: const EdgeInsets.only(bottom: 18),
//                           width: double.infinity,
//                           height: 104,
//                           child: Row(
//                             children: [
//                               Shimmer.fromColors(
//                                 period: const Duration(seconds: 2),
//                                 baseColor: Colors.grey.withOpacity(0.25),
//                                 highlightColor: Colors.white.withOpacity(0.6),
//                                 child: Container(
//                                   alignment: Alignment.topLeft,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                         image: NetworkImage(
//                                             'https://media.istockphoto.com/id/589972482/photo/stone-face-asura-and-sunset-over-moat-angkor-thom-cambodia.jpg?s=612x612&w=0&k=20&c=mmEl1aZ2FN7gLAOrBPnJxeIeXHJhSP0OHKG9IK7JzKs='),
//                                         fit: BoxFit.cover),
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.all(
//                                       Radius.circular(10),
//                                     ),
//                                   ),
//                                   margin: const EdgeInsets.only(left: 10),
//                                   width: 84,
//                                   height: 84,
//                                   child: Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 5, top: 5),
//                                     child: CircleAvatar(
//                                       backgroundColor:
//                                           AppColor.darkGrey25.withOpacity(0.5),
//                                       maxRadius: 15,
//                                       child: SvgPicture.asset(
//                                         'asset/svg/Heart.svg',
//                                         height: 18,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Shimmer.fromColors(
//                                 period: const Duration(seconds: 2),
//                                 baseColor: Colors.grey.withOpacity(0.25),
//                                 highlightColor: Colors.white.withOpacity(0.6),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Shimmer.fromColors(
//                                       period: const Duration(seconds: 2),
//                                       baseColor: Colors.grey.withOpacity(0.25),
//                                       highlightColor:
//                                           Colors.white.withOpacity(0.6),
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Colors.red,
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(10),
//                                           ),
//                                         ),
//                                         width: 80,
//                                         height: 10,
//                                       ),
//                                     ),
//                                     Shimmer.fromColors(
//                                       period: const Duration(seconds: 2),
//                                       baseColor: Colors.grey.withOpacity(0.25),
//                                       highlightColor:
//                                           Colors.white.withOpacity(0.6),
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Colors.red,
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(10),
//                                           ),
//                                         ),
//                                         width: 80,
//                                         height: 10,
//                                       ),
//                                     ),
//                                     Shimmer.fromColors(
//                                       period: const Duration(seconds: 2),
//                                       baseColor: Colors.grey.withOpacity(0.25),
//                                       highlightColor:
//                                           Colors.white.withOpacity(0.6),
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Colors.red,
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(10),
//                                           ),
//                                         ),
//                                         width: 80,
//                                         height: 10,
//                                       ),
//                                     ),
//                                     Shimmer.fromColors(
//                                       period: const Duration(seconds: 2),
//                                       baseColor: Colors.grey.withOpacity(0.25),
//                                       highlightColor:
//                                           Colors.white.withOpacity(0.6),
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Colors.red,
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(10),
//                                           ),
//                                         ),
//                                         width: 80,
//                                         height: 10,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                       .toList(),
//                 ],
//               )
//             : Column(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   ...conPrevilege.shopmodelList
//                       .asMap()
//                       .entries
//                       .map(
//                         (element) => Stack(
//                           children: [
//                             Container(
//                               decoration: const BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(10),
//                                 ),
//                               ),
//                               margin: const EdgeInsets.only(bottom: 18),
//                               width: double.infinity,
//                               height: 104,
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     alignment: Alignment.topLeft,
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${element.value.shopLogo}'),
//                                           fit: BoxFit.cover),
//                                       color: Colors.white,
//                                       borderRadius: const BorderRadius.all(
//                                         Radius.circular(10),
//                                       ),
//                                     ),
//                                     margin: const EdgeInsets.only(left: 10),
//                                     width: 84,
//                                     height: 84,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 5, top: 5),
//                                       child: GetBuilder<SliderImageController>(
//                                         init: SliderImageController(),
//                                         initState: (_) {},
//                                         builder: (conPrevilege) {
//                                           return CustomFavorite(
//                                             backgroudColor:
//                                                 Colors.grey.withOpacity(0.5),
//                                             isfav: !element.value.isFavorite!,
//                                             onPressed: () {
//                                               conPrevilege.key.value =
//                                                   element.key;
//                                               // conPrevilege.isfav.value =
//                                               //     !conPrevilege.isfav.value;
//                                               element.value.isFavorite =
//                                                   !element.value.isFavorite!;
//                                               conPrevilege.update();
//                                             },
//                                           );
//                                         },
//                                       ),
//                                       // child: CircleAvatar(
//                                       //   backgroundColor: AppColor.darkGrey25
//                                       //       .withOpacity(0.5),
//                                       //   maxRadius: 15,
//                                       //   child: SvgPicture.asset(
//                                       //     'asset/svg/Heart.svg',
//                                       //     height: 18,
//                                       //   ),
//                                       // ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         '${element.value.status}',
//                                         style: CustomTextstyle.sizeA.copyWith(
//                                           color: Colors.green,
//                                           fontSize: 12,
//                                         ),
//                                       ),
//                                       Text(
//                                         '${element.value.shopNameInEnglish}',
//                                         style: CustomTextstyle.sizebBlack
//                                             .copyWith(
//                                                 fontWeight: FontWeight.w700,
//                                                 fontSize: 14),
//                                       ),
//                                       SizedBox(
//                                         width: 200,
//                                         child: Text(
//                                           '${element.value.slogan}',
//                                           style: CustomTextstyle.sizeABlack
//                                               .copyWith(
//                                                   color: AppColor.darkGrey25,
//                                                   fontSize: 12),
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         children: [
//                                           SizedBox(
//                                             child: GestureDetector(
//                                               child: SvgPicture.asset(
//                                                   'asset/svg/Location.svg'),
//                                             ),
//                                           ),
//                                           const SizedBox(
//                                             width: 8,
//                                           ),
//                                           SizedBox(
//                                             width: 200,
//                                             // height: 30,

//                                             child: Text(
//                                               maxLines: 1,
//                                               overflow: TextOverflow.ellipsis,
//                                               '${element.value.fullAddress}',
//                                               style: CustomTextstyle.sizeABlack
//                                                   .copyWith(
//                                                 fontSize: 12,
//                                                 color: AppColor.darkGrey
//                                                     .withOpacity(0.7),
//                                               ),
//                                             ),
//                                           ),
//                                           // const SizedBox(
//                                           //   width: 100,
//                                           //   height: 30,
//                                           //   // color: Colors.red,
//                                           //   child: Text(
//                                           //       'Name Name Name Name Namme',
//                                           //       style: TextStyle(),
//                                           //       maxLines: 1,
//                                           //       overflow: TextOverflow.ellipsis),
//                                           // ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Positioned(
//                               right: 10,
//                               top: 10,
//                               child: Container(
//                                 width: 40,
//                                 height: 25,
//                                 color: Colors.red,
//                                 child: Center(
//                                   child: Text(
//                                     '${element.value.discountRate}%',
//                                     style: CustomTextstyle.sizeB,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                       .toList(),
//                 ],
//               ),
//       ),
//     );
//   }
// }

// class IosSecondPage extends StatefulWidget {
//   const IosSecondPage({Key? key}) : super(key: key);

//   @override
//   State<IosSecondPage> createState() => _IosSecondPageState();
// }

// class _IosSecondPageState extends State<IosSecondPage> {
//   final conPre = Get.put(SliderImageController());
//   @override
//   void initState() {
//     conPre.getShop(onSelect: 'Fav');
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       // height: 100,
//       // color: Colors.red,
//       child: Column(
//         children: [
//           // SizedBox(
//           //   height: 10,
//           // ),
//           ...conPre.shopmodelList.asMap().entries.map((e) {
//             return Text('test ${e.value.fullAddress}');
//           })
//         ],
//       ),
//     );
//   }
// }