
import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../company/companymodel.dart';

part 'userfreezed.freezed.dart';
part 'userfreezed.g.dart';

@freezed
class Users with _$Users {
  factory Users({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "username") final String? username,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "address")final Address? address,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "website") final String? website,
    @JsonKey(name: "company")final CompanyMode? company,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
