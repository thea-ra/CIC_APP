// ignore_for_file: invalid_annotation_target, duplicate_ignore

import 'package:cic_project/core/model/previlege/shop_model/open_day/openday.dart';
import 'package:cic_project/core/model/previlege/shop_model/phone/phone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@unfreezed
class PrivilegeShopModel with _$PrivilegeShopModel {
  factory PrivilegeShopModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "id") final int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: "status") final String? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: "is_favorite") bool? isFavorite,
    // ignore: invalid_annotation_target
    @JsonKey(name: "point_accepted") final bool? pointAccepted,
    // ignore: invalid_annotation_target
    @JsonKey(name: "current_point") final int? currentPoint,
    // ignore: invalid_annotation_target
    @JsonKey(name: "slogan") final String? slogan,
    // ignore: invalid_annotation_target
    @JsonKey(name: "discount_rate") final String? discountRate,
    // ignore: invalid_annotation_target
    @JsonKey(name: "discount_bg_color") final String? discountBgColor,
    // ignore: invalid_annotation_target
    @JsonKey(name: "discount_bg_color_end") final String? discountBgColorEnd,
    @JsonKey(name: "shop_name_in_khmer") final String? shopNameInKhmer,
    // ignore: invalid_annotation_target
    @JsonKey(name: "shop_name_in_english") final String? shopNameInEnglish,
    // ignore: invalid_annotation_target
    @JsonKey(name: "brief_address") final String? briefAddress,
    // ignore: invalid_annotation_target
    @JsonKey(name: "full_address") final String? fullAddress,
    // ignore: invalid_annotation_target
    @JsonKey(name: "shop_logo") final String? shopLogo,
    // ignore: invalid_annotation_target
    @JsonKey(name: "number_shop") final int? numberShop,
    // ignore: invalid_annotation_target
    @JsonKey(name: "contacts") final List<PhoneModel>? contacts,
    // ignore: invalid_annotation_target
    @JsonKey(name: "telegram_link") final String? telegramLink,
    // ignore: invalid_annotation_target
    @JsonKey(name: "latitude") final double? latitude,
    // ignore: invalid_annotation_target
    @JsonKey(name: "longitude") final double? longitude,
    // ignore: invalid_annotation_target
    @JsonKey(name: "product_or_service") final String? productOrService,
    // ignore: invalid_annotation_target
    @JsonKey(name: "opening_days") final List<OpendayModel>? openingDays,
    final int? phone,
  }) = _PrivilegeShopModel;
  factory PrivilegeShopModel.fromJson(Map<String, dynamic> json) =>
      _$PrivilegeShopModelFromJson(json);
}
