import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_company.freezed.dart';
part 'model_company.g.dart';

@freezed
class ModelCompany with _$ModelCompany {
  factory ModelCompany({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "member_id") final int? code,
    @JsonKey(name: "company_logo") final String? companylogo,
    @JsonKey(name: "company_slogan") final String? companyslogan,
    @JsonKey(name: "company_product_and_service")
        final String? companyproductandservice,
    @JsonKey(name: "company_profile") final String? companyprofile,
    @JsonKey(name: "street_no") final String? streetno,
    @JsonKey(name: "address") final String? address,
    @JsonKey(name: "phone_number") final String? phone,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "company_name") final String? companyname,
    @JsonKey(name: "personal_interest") final String? personalinterest,
    @JsonKey(name: "company_diagnostic_report") final String? report,
  }) = _ModelCompany;

  factory ModelCompany.fromJson(Map<String, dynamic> json) =>
      _$ModelCompanyFromJson(json);
}
