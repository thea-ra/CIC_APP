import 'package:freezed_annotation/freezed_annotation.dart';

part 'companymodel.freezed.dart';
part 'companymodel.g.dart';

@freezed
class CompanyMode with _$CompanyMode {

  factory CompanyMode({
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "catchPhrase") final String? catchPhrase,
    @JsonKey(name: "bs") final String? bs,

  }) = _CompanyMode;

  factory CompanyMode.fromJson(Map<String, dynamic> json) => _$CompanyModeFromJson(json);
}