import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_meta.freezed.dart';
part 'pre_meta.g.dart';

@freezed
class MetaModel with _$MetaModel {
  factory MetaModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "current_page") final int? currentPage,
    // ignore: invalid_annotation_target
    @JsonKey(name: "from") final int? from,
    // ignore: invalid_annotation_target
    @JsonKey(name: "last_page") final int? lastPage,
    // ignore: invalid_annotation_target
    @JsonKey(name: "per_page") final int? perPage,
  }) = _MetaModel;
  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
