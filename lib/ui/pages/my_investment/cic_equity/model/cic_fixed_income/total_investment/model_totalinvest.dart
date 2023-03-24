import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_totalinvest.freezed.dart';
part 'model_totalinvest.g.dart';

@freezed
class ModelTotalInvestment with _$ModelTotalInvestment {
  factory ModelTotalInvestment({
    @JsonKey(name: "currency") final String? currency,
    @JsonKey(name: "total_investment") final String? totalinvestment,
    @JsonKey(name: "hide") final bool? hide,
    @JsonKey(name: "about_fif") final String? aboutfif,
  }) = _ModelTotalInvestment;

  factory ModelTotalInvestment.fromJson(Map<String, dynamic> json) =>
      _$ModelTotalInvestmentFromJson(json);
}
