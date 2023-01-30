import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';
part 'investment.g.dart';

@freezed
class InvestmentModel with _$InvestmentModel {
  factory InvestmentModel({
    @JsonKey(name: "id") final num? id,
    @JsonKey(name: "price") final String? price,
    @JsonKey(name: "price_unformat") final num? priceunformat,
  }) = _InvestmentModel;

  factory InvestmentModel.fromJson(Map<String, dynamic> json) =>
      _$InvestmentModelFromJson(json);
}
