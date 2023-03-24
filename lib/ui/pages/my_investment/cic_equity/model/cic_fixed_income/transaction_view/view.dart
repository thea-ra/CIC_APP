import 'package:freezed_annotation/freezed_annotation.dart';

part 'view.freezed.dart';
part 'view.g.dart';

@freezed
class ModelView with _$ModelView {
  factory ModelView({
    @JsonKey(name: "investor_id") final String? investorid,
    @JsonKey(name: "investor_name") final String? investorname,
    @JsonKey(name: "subscription_status") final String? subscriptionstatus,
    @JsonKey(name: "payment_status") final String? paymentstatus,
    @JsonKey(name: "price_per_ut") final num? priceperut,
    @JsonKey(name: "ut_to_subscribe") final num? uttosubscribe,
    @JsonKey(name: "total_subscription_cost") final num? totalsubscriptioncost,
    @JsonKey(name: "paid_amount") final num? paidamount,
    @JsonKey(name: "unpaid_amount") final num? unpaidamount,
  }) = _ModelView;

  factory ModelView.fromJson(Map<String, dynamic> json) =>
      _$ModelViewFromJson(json);
}
