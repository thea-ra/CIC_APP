import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_account.freezed.dart';
part 'model_account.g.dart';

@freezed
class AccountModel with _$AccountModel {
  factory AccountModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "code") final String? code,
    @JsonKey(name: "is_customer") final int? iscustomer,
    @JsonKey(name: "customer_id") final int? customerid,
    @JsonKey(name: "profile") final String? profile,
    @JsonKey(name: "first_name") final String? firstname,
    @JsonKey(name: "full_name") final String? fullname,
    @JsonKey(name: "investment_amount") final String? investmentAmount,
    @JsonKey(name: "last_name") final String? lastname,
    @JsonKey(name: "date_of_birth") final String? dataofbirth,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "email") final String? email,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
