// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'income.freezed.dart';
part 'income.g.dart';

@freezed
class ModelIncome with _$ModelIncome {
  factory ModelIncome({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "code") final String? code,
    @JsonKey(name: "color") final String? color,
    @JsonKey(name: "hide") final bool? hide,
    @JsonKey(name: "account_name") final String? accountName,
    @JsonKey(name: "status") final String? status,
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "investment_amount") final String? investmentAmount,
    @JsonKey(name: "original_amount") final num? originalAmount,
    @JsonKey(name: "return_payment_method") final String? returnPaymentMethod,
    @JsonKey(name: "mma_account_id") final num? mmaAccountId,
    @JsonKey(name: "bank_id") final num? bankId,
  }) = _ModelIncome;

  factory ModelIncome.fromJson(Map<String, dynamic> json) =>
      _$ModelIncomeFromJson(json);
}
