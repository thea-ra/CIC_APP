// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      iscustomer: json['is_customer'] as int?,
      customerid: json['customer_id'] as int?,
      profile: json['profile'] as String?,
      firstname: json['first_name'] as String?,
      fullname: json['full_name'] as String?,
      investmentAmount: json['investment_amount'] as String?,
      lastname: json['last_name'] as String?,
      dataofbirth: json['date_of_birth'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      companyname: json['company_name'] as String?,
      about: json['about'] as String?,
      companies: json['companies'] as Map<String, dynamic>?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      personalinterest: json['personal_interest'] as String?,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'is_customer': instance.iscustomer,
      'customer_id': instance.customerid,
      'profile': instance.profile,
      'first_name': instance.firstname,
      'full_name': instance.fullname,
      'investment_amount': instance.investmentAmount,
      'last_name': instance.lastname,
      'date_of_birth': instance.dataofbirth,
      'phone': instance.phone,
      'email': instance.email,
      'company_name': instance.companyname,
      'about': instance.about,
      'companies': instance.companies,
      'title': instance.title,
      'name': instance.name,
      'logo': instance.logo,
      'website': instance.website,
      'address': instance.address,
      'personal_interest': instance.personalinterest,
    };
