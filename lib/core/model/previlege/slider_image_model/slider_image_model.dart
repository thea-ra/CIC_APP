import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_image_model.freezed.dart';
part 'slider_image_model.g.dart';

@freezed
class SliderImageModel with _$SliderImageModel {
  factory SliderImageModel({
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "module") final String? module,
    @JsonKey(name: "shop_id") final int? shopId,
    @JsonKey(name: "type") final String? type,
    @JsonKey(name: "status") final String? status,
    @JsonKey(name: "destination") final String? destination,
    @JsonKey(name: "url_target") final String? urlTarget,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "button") final String? button,
  }) = _SliderImageModel;
  factory SliderImageModel.fromJson(Map<String, dynamic> json) =>
      _$SliderImageModelFromJson(json);
}
