import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
class InfoModel with _$InfoModel {
  factory InfoModel({
    @JsonKey(name: "capital_gain") final String? capitalgain,
    @JsonKey(name: "dividend") final String? dividend,
    @JsonKey(name: "total") final String? total,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}

