// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'histories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelHistory _$$_ModelHistoryFromJson(Map<String, dynamic> json) =>
    _$_ModelHistory(
      transactionid: json['transaction_id'] as int?,
      referalid: json['referal_id'] as int?,
      remark: json['remark'] as String?,
      utamount: json['ut_amount'] as num?,
      type: json['type'] as String?,
      amount: json['amount'] as num?,
      label: json['label'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      status: json['status'] as String?,
      view: json['view'] == null
          ? null
          : ModelView.fromJson(json['view'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelHistoryToJson(_$_ModelHistory instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionid,
      'referal_id': instance.referalid,
      'remark': instance.remark,
      'ut_amount': instance.utamount,
      'type': instance.type,
      'amount': instance.amount,
      'label': instance.label,
      'date': instance.date,
      'time': instance.time,
      'status': instance.status,
      'view': instance.view,
    };
