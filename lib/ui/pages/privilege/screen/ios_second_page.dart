import 'package:cic_project/ui/pages/privilege/controller/previlege_controller.dart';
import 'package:cic_project/ui/share/component/custom_favourite.dart';
import 'package:cic_project/util/color/app_color.dart';
import 'package:cic_project/util/textstyle/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class IosSecondPage extends StatefulWidget {
  const IosSecondPage({Key? key}) : super(key: key);

  @override
  State<IosSecondPage> createState() => _IosSecondPageState();
}

class _IosSecondPageState extends State<IosSecondPage> {
  final conPrevilege = Get.put(SliderImageController());
  @override
  void initState() {
    conPrevilege.getShop(onSelect: 'Fav');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 100,
      // color: Colors.red,
      child: Obx(
        () => conPrevilege.isloadingShop.value
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ...conPrevilege.shopmodelList
                      .map(
                        (element) => Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          margin: const EdgeInsets.only(bottom: 18),
                          width: double.infinity,
                          height: 104,
                          child: Row(
                            children: [
                              Shimmer.fromColors(
                                period: const Duration(seconds: 2),
                                baseColor: Colors.grey.withOpacity(0.25),
                                highlightColor: Colors.white.withOpacity(0.6),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://media.istockphoto.com/id/589972482/photo/stone-face-asura-and-sunset-over-moat-angkor-thom-cambodia.jpg?s=612x612&w=0&k=20&c=mmEl1aZ2FN7gLAOrBPnJxeIeXHJhSP0OHKG9IK7JzKs='),
                                        fit: BoxFit.cover),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(left: 10),
                                  width: 84,
                                  height: 84,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          AppColor.darkGrey25.withOpacity(0.5),
                                      maxRadius: 15,
                                      child: SvgPicture.asset(
                                        'asset/svg/Heart.svg',
                                        height: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Shimmer.fromColors(
                                period: const Duration(seconds: 2),
                                baseColor: Colors.grey.withOpacity(0.25),
                                highlightColor: Colors.white.withOpacity(0.6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Shimmer.fromColors(
                                      period: const Duration(seconds: 2),
                                      baseColor: Colors.grey.withOpacity(0.25),
                                      highlightColor:
                                          Colors.white.withOpacity(0.6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        width: 80,
                                        height: 10,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      period: const Duration(seconds: 2),
                                      baseColor: Colors.grey.withOpacity(0.25),
                                      highlightColor:
                                          Colors.white.withOpacity(0.6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        width: 80,
                                        height: 10,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      period: const Duration(seconds: 2),
                                      baseColor: Colors.grey.withOpacity(0.25),
                                      highlightColor:
                                          Colors.white.withOpacity(0.6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        width: 80,
                                        height: 10,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      period: const Duration(seconds: 2),
                                      baseColor: Colors.grey.withOpacity(0.25),
                                      highlightColor:
                                          Colors.white.withOpacity(0.6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        width: 80,
                                        height: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ],
              )
            : Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ...conPrevilege.shopmodelList
                      .asMap()
                      .entries
                      .map(
                        (element) => Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.go(
                                    '/previlege/iso-second/detail-iso-second');
                                conPrevilege.getShopId(id: element.value.id);
                                conPrevilege.update();
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                margin: const EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 104,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                '${element.value.shopLogo}'),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      margin: const EdgeInsets.only(left: 10),
                                      width: 84,
                                      height: 84,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 5),
                                        child:
                                            GetBuilder<SliderImageController>(
                                          init: SliderImageController(),
                                          initState: (_) {},
                                          builder: (conPrevilege) {
                                            return CustomFavorite(
                                              backgroudColor:
                                                  Colors.grey.withOpacity(0.5),
                                              isfav: !element.value.isFavorite!,
                                              onPressed: () {
                                                conPrevilege.key.value =
                                                    element.key;
                                                // conPrevilege.isfav.value =
                                                //     !conPrevilege.isfav.value;
                                                element.value.isFavorite =
                                                    !element.value.isFavorite!;
                                                conPrevilege.updateFav(
                                                  id: element.value.id
                                                      .toString(),
                                                  boolFav:
                                                      element.value.isFavorite,
                                                );
                                                conPrevilege.update();
                                              },
                                            );
                                          },
                                        ),
                                        // child: CircleAvatar(
                                        //   backgroundColor: AppColor.darkGrey25
                                        //       .withOpacity(0.5),
                                        //   maxRadius: 15,
                                        //   child: SvgPicture.asset(
                                        //     'asset/svg/Heart.svg',
                                        //     height: 18,
                                        //   ),
                                        // ),
                                      ),
                                    ),
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
                                          '${element.value.status}',
                                          style: CustomTextstyle.sizeA.copyWith(
                                            color: Colors.green,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '${element.value.shopNameInEnglish}',
                                          style: CustomTextstyle.sizebBlack
                                              .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            '${element.value.slogan}',
                                            style: CustomTextstyle.sizeABlack
                                                .copyWith(
                                                    color: AppColor.darkGrey25,
                                                    fontSize: 12),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              child: GestureDetector(
                                                child: SvgPicture.asset(
                                                  'asset/svg/Location.svg',
                                                  height: 12,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            SizedBox(
                                              // color: Colors.red,
                                              width: Get.width * 0.5,
                                              // height: 30,

                                              child: Text(
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                '${element.value.fullAddress}',
                                                style: CustomTextstyle
                                                    .sizeABlack
                                                    .copyWith(
                                                  fontSize: 12,
                                                  color: AppColor.darkGrey
                                                      .withOpacity(0.7),
                                                ),
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 100,
                                            //   height: 30,
                                            //   // color: Colors.red,
                                            //   child: Text(
                                            //       'Name Name Name Name Namme',
                                            //       style: TextStyle(),
                                            //       maxLines: 1,
                                            //       overflow: TextOverflow.ellipsis),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                width: 40,
                                height: 25,
                                color: Colors.red,
                                child: Center(
                                  child: Text(
                                    '${element.value.discountRate}%',
                                    style: CustomTextstyle.sizeB,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
      ),
    );
  }
}
