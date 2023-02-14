import 'package:cic_project/core/model/previlege/previlege_meta/pre_meta.dart';
import 'package:cic_project/core/model/previlege/shop_model/shop.dart';
import 'package:cic_project/core/model/previlege/slider_image_model/category_model/category_model.dart';
import 'package:cic_project/core/model/previlege/slider_image_model/slider_image_model.dart';
import 'package:cic_project/util/helper/api_base_helper.dart';
import 'package:get/get.dart';

class SliderImageController extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final sliderImageModel = SliderImageModel();
  final sliderImageModelList = <SliderImageModel>[].obs;
  final current = 0.obs;
  final isloadingImage = false.obs;
  final isfav = false.obs;
  final key = 0.obs;
  Future<List<SliderImageModel>> getSliderImage() async {
    isloadingImage(true);
    await apibasehelper
        .onNetworkRequesting(
      url: 'v4/slide?module=privilege',
      methode: METHODE.get,
      isAuthorize: true,
    )
        .then(
      (res) {
        res['data'].map((e) {
          sliderImageModelList.add(
            SliderImageModel.fromJson(e),
          );
        }).toList();
        print('Lenght');
        print(sliderImageModelList.length);
        print('Pic : ${sliderImageModelList[0].image}');
      },
    ).onError((ErrorModel error, stackTrace) {});
    isloadingImage(false);
    return sliderImageModelList;
  }

  //Category
  final isloadingCate = false.obs;
  final categoryModel = CategoryModel();
  final categoryModelList = <CategoryModel>[].obs;
  Future<List<CategoryModel>> getCategory() async {
    isloadingCate(true);
    await apibasehelper
        .onNetworkRequesting(
            url: 'v4/privilege/category',
            methode: METHODE.get,
            isAuthorize: true)
        .then(
      (res) {
        res['data'].map((e) {
          categoryModelList.add(CategoryModel.fromJson(e));
        }).toList();
        print('Lenght category:${categoryModelList.length}');
      },
    ).onError((ErrorModel error, stackTrace) {});
    isloadingCate(false);
    return categoryModelList;
  }

  //shop

  final isloadingPagination = false.obs;
  final currentPage = 1.obs;
  final isloadingShop = false.obs;
  final shopmodel = PrivilegeShopModel();
  final shopmodelList = <PrivilegeShopModel>[].obs;
  final meta = MetaModel().obs;
  Future<List<PrivilegeShopModel>> getShop({String? onSelect}) async {
    if (currentPage.value == 1) {
      isloadingShop(true);
      isloadingPagination(false);
    } else {
      isloadingPagination(true);
    }
    await apibasehelper
        .onNetworkRequesting(
      url: onSelect == 'Home'
          ? 'v4/privilege/shop/'
          : 'v4/privilege/shop?favorite=true',
      methode: METHODE.get,
      isAuthorize: true,
    )
        .then(
      (res) {
        shopmodelList.clear();
        shopmodelList.refresh();
        var resJson = res['data'];
        meta.value = MetaModel.fromJson(res['meta']);
        if (currentPage.value == 1) {
          shopmodelList.clear();
        }
        resJson.map(
          (e) {
            shopmodelList.add(
              PrivilegeShopModel.fromJson(e),
            );
          },
        ).toList();
        if (currentPage.value < meta.value.perPage!) {
          currentPage.value++;
        }
        print('Lenght shop:${shopmodelList.length}');
      },
    );
    isloadingShop(false);
    return shopmodelList;
  }

  // update favourite or unfavourite
  final isloadinFavUpdate = false.obs;
  Future updateFav({String? id, bool? boolFav}) async {
    isloadinFavUpdate.value = false;
    await apibasehelper
        .onNetworkRequesting(
          body: {},
          url: 'v4/privilege/shop/$id?is_favorite=$boolFav',
          methode: METHODE.update,
          isAuthorize: true,
        )
        .then(
          (value) => print('Succes Update '),
        )
        .onError(
          (ErrorModel error, stackTrace) => print('Error:${error.bodyString}'),
        );
  }

  //
  final isloadingShopId = false.obs;
  final shopmodelId = PrivilegeShopModel().obs;
  final shopmodelListId = <PrivilegeShopModel>[].obs;
  Future<PrivilegeShopModel> getShopId({int? id}) async {
    await apibasehelper
        .onNetworkRequesting(
      url: 'v4/privilege/shop/$id',
      methode: METHODE.get,
      isAuthorize: true,
    )
        .then(
      (res) {
        shopmodelId.value = PrivilegeShopModel.fromJson(res['data']);

        print('======================== shop:${shopmodelId.value}');
      },
    );
    isloadingShopId(false);
    return shopmodelId.value;
  }

  @override
  void onInit() {
    getSliderImage();
    getCategory();
    getShop();
    // TODO: implement onInit
    super.onInit();
  }
}
