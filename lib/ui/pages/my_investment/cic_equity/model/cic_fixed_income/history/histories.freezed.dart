// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'histories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelHistory _$ModelHistoryFromJson(Map<String, dynamic> json) {
  return _ModelHistory.fromJson(json);
}

/// @nodoc
mixin _$ModelHistory {
  @JsonKey(name: "transaction_id")
  int? get transactionid => throw _privateConstructorUsedError;
  @JsonKey(name: "referal_id")
  int? get referalid => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "ut_amount")
  num? get utamount => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "view")
  ModelView? get view => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelHistoryCopyWith<ModelHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelHistoryCopyWith<$Res> {
  factory $ModelHistoryCopyWith(
          ModelHistory value, $Res Function(ModelHistory) then) =
      _$ModelHistoryCopyWithImpl<$Res, ModelHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int? transactionid,
      @JsonKey(name: "referal_id") int? referalid,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "ut_amount") num? utamount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "view") ModelView? view});

  $ModelViewCopyWith<$Res>? get view;
}

/// @nodoc
class _$ModelHistoryCopyWithImpl<$Res, $Val extends ModelHistory>
    implements $ModelHistoryCopyWith<$Res> {
  _$ModelHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionid = freezed,
    Object? referalid = freezed,
    Object? remark = freezed,
    Object? utamount = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? label = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? status = freezed,
    Object? view = freezed,
  }) {
    return _then(_value.copyWith(
      transactionid: freezed == transactionid
          ? _value.transactionid
          : transactionid // ignore: cast_nullable_to_non_nullable
              as int?,
      referalid: freezed == referalid
          ? _value.referalid
          : referalid // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      utamount: freezed == utamount
          ? _value.utamount
          : utamount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as ModelView?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelViewCopyWith<$Res>? get view {
    if (_value.view == null) {
      return null;
    }

    return $ModelViewCopyWith<$Res>(_value.view!, (value) {
      return _then(_value.copyWith(view: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModelHistoryCopyWith<$Res>
    implements $ModelHistoryCopyWith<$Res> {
  factory _$$_ModelHistoryCopyWith(
          _$_ModelHistory value, $Res Function(_$_ModelHistory) then) =
      __$$_ModelHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int? transactionid,
      @JsonKey(name: "referal_id") int? referalid,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "ut_amount") num? utamount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "view") ModelView? view});

  @override
  $ModelViewCopyWith<$Res>? get view;
}

/// @nodoc
class __$$_ModelHistoryCopyWithImpl<$Res>
    extends _$ModelHistoryCopyWithImpl<$Res, _$_ModelHistory>
    implements _$$_ModelHistoryCopyWith<$Res> {
  __$$_ModelHistoryCopyWithImpl(
      _$_ModelHistory _value, $Res Function(_$_ModelHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionid = freezed,
    Object? referalid = freezed,
    Object? remark = freezed,
    Object? utamount = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? label = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? status = freezed,
    Object? view = freezed,
  }) {
    return _then(_$_ModelHistory(
      transactionid: freezed == transactionid
          ? _value.transactionid
          : transactionid // ignore: cast_nullable_to_non_nullable
              as int?,
      referalid: freezed == referalid
          ? _value.referalid
          : referalid // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      utamount: freezed == utamount
          ? _value.utamount
          : utamount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as ModelView?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelHistory implements _ModelHistory {
  _$_ModelHistory(
      {@JsonKey(name: "transaction_id") this.transactionid,
      @JsonKey(name: "referal_id") this.referalid,
      @JsonKey(name: "remark") this.remark,
      @JsonKey(name: "ut_amount") this.utamount,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "view") this.view});

  factory _$_ModelHistory.fromJson(Map<String, dynamic> json) =>
      _$$_ModelHistoryFromJson(json);

  @override
  @JsonKey(name: "transaction_id")
  final int? transactionid;
  @override
  @JsonKey(name: "referal_id")
  final int? referalid;
  @override
  @JsonKey(name: "remark")
  final String? remark;
  @override
  @JsonKey(name: "ut_amount")
  final num? utamount;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "amount")
  final num? amount;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "view")
  final ModelView? view;

  @override
  String toString() {
    return 'ModelHistory(transactionid: $transactionid, referalid: $referalid, remark: $remark, utamount: $utamount, type: $type, amount: $amount, label: $label, date: $date, time: $time, status: $status, view: $view)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelHistory &&
            (identical(other.transactionid, transactionid) ||
                other.transactionid == transactionid) &&
            (identical(other.referalid, referalid) ||
                other.referalid == referalid) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.utamount, utamount) ||
                other.utamount == utamount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.view, view) || other.view == view));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionid, referalid, remark,
      utamount, type, amount, label, date, time, status, view);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelHistoryCopyWith<_$_ModelHistory> get copyWith =>
      __$$_ModelHistoryCopyWithImpl<_$_ModelHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelHistoryToJson(
      this,
    );
  }
}

abstract class _ModelHistory implements ModelHistory {
  factory _ModelHistory(
      {@JsonKey(name: "transaction_id") final int? transactionid,
      @JsonKey(name: "referal_id") final int? referalid,
      @JsonKey(name: "remark") final String? remark,
      @JsonKey(name: "ut_amount") final num? utamount,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "amount") final num? amount,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "date") final String? date,
      @JsonKey(name: "time") final String? time,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "view") final ModelView? view}) = _$_ModelHistory;

  factory _ModelHistory.fromJson(Map<String, dynamic> json) =
      _$_ModelHistory.fromJson;

  @override
  @JsonKey(name: "transaction_id")
  int? get transactionid;
  @override
  @JsonKey(name: "referal_id")
  int? get referalid;
  @override
  @JsonKey(name: "remark")
  String? get remark;
  @override
  @JsonKey(name: "ut_amount")
  num? get utamount;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "amount")
  num? get amount;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "view")
  ModelView? get view;
  @override
  @JsonKey(ignore: true)
  _$$_ModelHistoryCopyWith<_$_ModelHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
