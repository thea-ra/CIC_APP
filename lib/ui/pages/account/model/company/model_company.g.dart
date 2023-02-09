// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelCompany _$$_ModelCompanyFromJson(Map<String, dynamic> json) =>
    _$_ModelCompany(
      id: json['id'] as int?,
      code: json['member_id'] as int?,
      companylogo: json['company_logo'] as String?,
      companyslogan: json['company_slogan'] as String?,
      companyproductandservice: json['company_product_and_service'] as String?,
      companyprofile: json['company_profile'] as String?,
      streetno: json['street_no'] as String?,
      address: json['address'] as String?,
      phone: json['phone_number'] as String?,
      email: json['email'] as String?,
      companyname: json['company_name'] as String?,
      personalinterest: json['personal_interest'] as String?,
      report: json['company_diagnostic_report'] as String?,
    );

Map<String, dynamic> _$$_ModelCompanyToJson(_$_ModelCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member_id': instance.code,
      'company_logo': instance.companylogo,
      'company_slogan': instance.companyslogan,
      'company_product_and_service': instance.companyproductandservice,
      'company_profile': instance.companyprofile,
      'street_no': instance.streetno,
      'address': instance.address,
      'phone_number': instance.phone,
      'email': instance.email,
      'company_name': instance.companyname,
      'personal_interest': instance.personalinterest,
      'company_diagnostic_report': instance.report,
    };
