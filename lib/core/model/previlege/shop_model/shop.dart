import 'package:cic_project/core/model/previlege/shop_model/open_day/openday.dart';
import 'package:cic_project/core/model/previlege/shop_model/phone/phone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@unfreezed
class PrivilegeShopModel with _$PrivilegeShopModel {
  factory PrivilegeShopModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "status") final String? status,
    @JsonKey(name: "is_favorite") bool? isFavorite,
    @JsonKey(name: "point_accepted") final bool? pointAccepted,
    @JsonKey(name: "current_point") final int? currentPoint,
    @JsonKey(name: "slogan") final String? slogan,
    @JsonKey(name: "discount_rate") final String? discountRate,
    @JsonKey(name: "discount_bg_color") final String? discountBgColor,
    @JsonKey(name: "discount_bg_color_end") final String? discountBgColorEnd,
    @JsonKey(name: "shop_name_in_khmer") final String? shopNameInKhmer,
    @JsonKey(name: "shop_name_in_english") final String? shopNameInEnglish,
    @JsonKey(name: "brief_address") final String? briefAddress,
    @JsonKey(name: "full_address") final String? fullAddress,
    @JsonKey(name: "shop_logo") final String? shopLogo,
    @JsonKey(name: "number_shop") final int? numberShop,
    @JsonKey(name: "contacts") final List<PhoneModel>? contacts,
    @JsonKey(name: "telegram_link") final String? telegramLink,
    @JsonKey(name: "latitude") final double? latitude,
    @JsonKey(name: "longitude") final double? longitude,
    @JsonKey(name: "product_or_service") final String? productOrService,
    @JsonKey(name: "opening_days") final List<OpendayModel>? openingDays,
    final int? phone,
  }) = _PrivilegeShopModel;
  factory PrivilegeShopModel.fromJson(Map<String, dynamic> json) =>
      _$PrivilegeShopModelFromJson(json);
}
