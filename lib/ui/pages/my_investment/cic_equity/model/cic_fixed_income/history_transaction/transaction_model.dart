import 'package:freezed_annotation/freezed_annotation.dart';

import '../history/histories.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class ModelTransaction with _$ModelTransaction {
  factory ModelTransaction({
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "histories") List<ModelHistory>? history,
  }) = _ModelTransaction;

  factory ModelTransaction.fromJson(Map<String, dynamic> json) =>
      _$ModelTransactionFromJson(json);
}
