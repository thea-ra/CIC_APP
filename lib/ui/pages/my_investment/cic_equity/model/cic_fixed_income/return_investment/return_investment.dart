import 'package:freezed_annotation/freezed_annotation.dart';

import '../info/info_model.dart';

part 'return_investment.freezed.dart';
part 'return_investment.g.dart';

@unfreezed
class ReturnModel with _$ReturnModel {
  factory ReturnModel({
    @JsonKey(name: "year") final num? year,
    @JsonKey(name: "info") InfoModel? info,
  }) = _ReturnModel;

  factory ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnModelFromJson(json);
}
