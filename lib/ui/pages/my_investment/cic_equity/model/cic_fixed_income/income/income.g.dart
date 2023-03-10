// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelIncome _$$_ModelIncomeFromJson(Map<String, dynamic> json) =>
    _$_ModelIncome(
      id: json['id'] as int?,
      code: json['code'] as String?,
      color: json['color'] as String?,
      accountName: json['account_name'] as String?,
      status: json['status'] as String?,
      date: json['date'] as String?,
      investmentAmount: json['investment_amount'] as String?,
      originalAmount: json['original_amount'] as num?,
      returnPaymentMethod: json['return_payment_method'] as String?,
      mmaAccountId: json['mma_account_id'] as num?,
      bankId: json['bank_id'] as num?,
    );

Map<String, dynamic> _$$_ModelIncomeToJson(_$_ModelIncome instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'color': instance.color,
      'account_name': instance.accountName,
      'status': instance.status,
      'date': instance.date,
      'investment_amount': instance.investmentAmount,
      'original_amount': instance.originalAmount,
      'return_payment_method': instance.returnPaymentMethod,
      'mma_account_id': instance.mmaAccountId,
      'bank_id': instance.bankId,
    };
