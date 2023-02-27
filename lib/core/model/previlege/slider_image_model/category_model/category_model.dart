// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "count_shop") final int? countShop,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "mime_type") final String? mimeType,
  }) = _CategoryModel;
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
