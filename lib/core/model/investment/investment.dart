import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';
part 'investment.g.dart';

@freezed
class InvestmentModel with _$InvestmentModel {
  factory InvestmentModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "id") final num? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: "price") final String? price,
    // ignore: invalid_annotation_target
    @JsonKey(name: "price_unformat") final num? priceunformat,
  }) = _InvestmentModel;

  factory InvestmentModel.fromJson(Map<String, dynamic> json) =>
      _$InvestmentModelFromJson(json);
}
