import 'package:freezed_annotation/freezed_annotation.dart';

import '../transaction_view/view.dart';

part 'histories.freezed.dart';
part 'histories.g.dart';

@freezed
class ModelHistory with _$ModelHistory {
  factory ModelHistory({
    @JsonKey(name: "transaction_id") final int? transactionid,
    @JsonKey(name: "referal_id") final int? referalid,
    @JsonKey(name: "remark") final String? remark,
    @JsonKey(name: "ut_amount") final num? utamount,
    @JsonKey(name: "type") final String? type,
    @JsonKey(name: "amount") final num? amount,
    @JsonKey(name: "label") final String? label,
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "time") final String? time,
    @JsonKey(name: "status") final String? status,
    @JsonKey(name: "view") ModelView? view,
  }) = _ModelHistory;

  factory ModelHistory.fromJson(Map<String, dynamic> json) =>
      _$ModelHistoryFromJson(json);
}
