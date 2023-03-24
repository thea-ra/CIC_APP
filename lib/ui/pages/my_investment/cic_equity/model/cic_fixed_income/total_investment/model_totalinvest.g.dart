// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_totalinvest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelTotalInvestment _$$_ModelTotalInvestmentFromJson(
        Map<String, dynamic> json) =>
    _$_ModelTotalInvestment(
      currency: json['currency'] as String?,
      totalinvestment: json['total_investment'] as String?,
      hide: json['hide'] as bool?,
      aboutfif: json['about_fif'] as String?,
    );

Map<String, dynamic> _$$_ModelTotalInvestmentToJson(
        _$_ModelTotalInvestment instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'total_investment': instance.totalinvestment,
      'hide': instance.hide,
      'about_fif': instance.aboutfif,
    };
