// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelView _$$_ModelViewFromJson(Map<String, dynamic> json) => _$_ModelView(
      investorid: json['investor_id'] as String?,
      investorname: json['investor_name'] as String?,
      subscriptionstatus: json['subscription_status'] as String?,
      paymentstatus: json['payment_status'] as String?,
      priceperut: json['price_per_ut'] as num?,
      uttosubscribe: json['ut_to_subscribe'] as num?,
      totalsubscriptioncost: json['total_subscription_cost'] as num?,
      paidamount: json['paid_amount'] as num?,
      unpaidamount: json['unpaid_amount'] as num?,
    );

Map<String, dynamic> _$$_ModelViewToJson(_$_ModelView instance) =>
    <String, dynamic>{
      'investor_id': instance.investorid,
      'investor_name': instance.investorname,
      'subscription_status': instance.subscriptionstatus,
      'payment_status': instance.paymentstatus,
      'price_per_ut': instance.priceperut,
      'ut_to_subscribe': instance.uttosubscribe,
      'total_subscription_cost': instance.totalsubscriptioncost,
      'paid_amount': instance.paidamount,
      'unpaid_amount': instance.unpaidamount,
    };
