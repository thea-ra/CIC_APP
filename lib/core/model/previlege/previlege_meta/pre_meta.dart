import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_meta.freezed.dart';
part 'pre_meta.g.dart';

@freezed
class MetaModel with _$MetaModel {
  factory MetaModel({
    @JsonKey(name: "current_page") final int? currentPage,
    @JsonKey(name: "from") final int? from,
    @JsonKey(name: "last_page") final int? lastPage,
    @JsonKey(name: "per_page") final int? perPage,
  }) = _MetaModel;
  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
