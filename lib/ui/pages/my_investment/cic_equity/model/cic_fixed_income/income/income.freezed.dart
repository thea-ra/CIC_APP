// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelIncome _$ModelIncomeFromJson(Map<String, dynamic> json) {
  return _ModelIncome.fromJson(json);
}

/// @nodoc
mixin _$ModelIncome {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "hide")
  bool? get hide => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "investment_amount")
  String? get investmentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "original_amount")
  num? get originalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "return_payment_method")
  String? get returnPaymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "mma_account_id")
  num? get mmaAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_id")
  num? get bankId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelIncomeCopyWith<ModelIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelIncomeCopyWith<$Res> {
  factory $ModelIncomeCopyWith(
          ModelIncome value, $Res Function(ModelIncome) then) =
      _$ModelIncomeCopyWithImpl<$Res, ModelIncome>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "hide") bool? hide,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "investment_amount") String? investmentAmount,
      @JsonKey(name: "original_amount") num? originalAmount,
      @JsonKey(name: "return_payment_method") String? returnPaymentMethod,
      @JsonKey(name: "mma_account_id") num? mmaAccountId,
      @JsonKey(name: "bank_id") num? bankId});
}

/// @nodoc
class _$ModelIncomeCopyWithImpl<$Res, $Val extends ModelIncome>
    implements $ModelIncomeCopyWith<$Res> {
  _$ModelIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? color = freezed,
    Object? hide = freezed,
    Object? accountName = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? investmentAmount = freezed,
    Object? originalAmount = freezed,
    Object? returnPaymentMethod = freezed,
    Object? mmaAccountId = freezed,
    Object? bankId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      returnPaymentMethod: freezed == returnPaymentMethod
          ? _value.returnPaymentMethod
          : returnPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      mmaAccountId: freezed == mmaAccountId
          ? _value.mmaAccountId
          : mmaAccountId // ignore: cast_nullable_to_non_nullable
              as num?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelIncomeCopyWith<$Res>
    implements $ModelIncomeCopyWith<$Res> {
  factory _$$_ModelIncomeCopyWith(
          _$_ModelIncome value, $Res Function(_$_ModelIncome) then) =
      __$$_ModelIncomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "hide") bool? hide,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "investment_amount") String? investmentAmount,
      @JsonKey(name: "original_amount") num? originalAmount,
      @JsonKey(name: "return_payment_method") String? returnPaymentMethod,
      @JsonKey(name: "mma_account_id") num? mmaAccountId,
      @JsonKey(name: "bank_id") num? bankId});
}

/// @nodoc
class __$$_ModelIncomeCopyWithImpl<$Res>
    extends _$ModelIncomeCopyWithImpl<$Res, _$_ModelIncome>
    implements _$$_ModelIncomeCopyWith<$Res> {
  __$$_ModelIncomeCopyWithImpl(
      _$_ModelIncome _value, $Res Function(_$_ModelIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? color = freezed,
    Object? hide = freezed,
    Object? accountName = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? investmentAmount = freezed,
    Object? originalAmount = freezed,
    Object? returnPaymentMethod = freezed,
    Object? mmaAccountId = freezed,
    Object? bankId = freezed,
  }) {
    return _then(_$_ModelIncome(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      returnPaymentMethod: freezed == returnPaymentMethod
          ? _value.returnPaymentMethod
          : returnPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      mmaAccountId: freezed == mmaAccountId
          ? _value.mmaAccountId
          : mmaAccountId // ignore: cast_nullable_to_non_nullable
              as num?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelIncome implements _ModelIncome {
  _$_ModelIncome(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "hide") this.hide,
      @JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "investment_amount") this.investmentAmount,
      @JsonKey(name: "original_amount") this.originalAmount,
      @JsonKey(name: "return_payment_method") this.returnPaymentMethod,
      @JsonKey(name: "mma_account_id") this.mmaAccountId,
      @JsonKey(name: "bank_id") this.bankId});

  factory _$_ModelIncome.fromJson(Map<String, dynamic> json) =>
      _$$_ModelIncomeFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "hide")
  final bool? hide;
  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "investment_amount")
  final String? investmentAmount;
  @override
  @JsonKey(name: "original_amount")
  final num? originalAmount;
  @override
  @JsonKey(name: "return_payment_method")
  final String? returnPaymentMethod;
  @override
  @JsonKey(name: "mma_account_id")
  final num? mmaAccountId;
  @override
  @JsonKey(name: "bank_id")
  final num? bankId;

  @override
  String toString() {
    return 'ModelIncome(id: $id, code: $code, color: $color, hide: $hide, accountName: $accountName, status: $status, date: $date, investmentAmount: $investmentAmount, originalAmount: $originalAmount, returnPaymentMethod: $returnPaymentMethod, mmaAccountId: $mmaAccountId, bankId: $bankId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelIncome &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.investmentAmount, investmentAmount) ||
                other.investmentAmount == investmentAmount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.returnPaymentMethod, returnPaymentMethod) ||
                other.returnPaymentMethod == returnPaymentMethod) &&
            (identical(other.mmaAccountId, mmaAccountId) ||
                other.mmaAccountId == mmaAccountId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      color,
      hide,
      accountName,
      status,
      date,
      investmentAmount,
      originalAmount,
      returnPaymentMethod,
      mmaAccountId,
      bankId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelIncomeCopyWith<_$_ModelIncome> get copyWith =>
      __$$_ModelIncomeCopyWithImpl<_$_ModelIncome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelIncomeToJson(
      this,
    );
  }
}

abstract class _ModelIncome implements ModelIncome {
  factory _ModelIncome(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "code") final String? code,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "hide") final bool? hide,
      @JsonKey(name: "account_name") final String? accountName,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "date") final String? date,
      @JsonKey(name: "investment_amount") final String? investmentAmount,
      @JsonKey(name: "original_amount") final num? originalAmount,
      @JsonKey(name: "return_payment_method") final String? returnPaymentMethod,
      @JsonKey(name: "mma_account_id") final num? mmaAccountId,
      @JsonKey(name: "bank_id") final num? bankId}) = _$_ModelIncome;

  factory _ModelIncome.fromJson(Map<String, dynamic> json) =
      _$_ModelIncome.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "hide")
  bool? get hide;
  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "investment_amount")
  String? get investmentAmount;
  @override
  @JsonKey(name: "original_amount")
  num? get originalAmount;
  @override
  @JsonKey(name: "return_payment_method")
  String? get returnPaymentMethod;
  @override
  @JsonKey(name: "mma_account_id")
  num? get mmaAccountId;
  @override
  @JsonKey(name: "bank_id")
  num? get bankId;
  @override
  @JsonKey(ignore: true)
  _$$_ModelIncomeCopyWith<_$_ModelIncome> get copyWith =>
      throw _privateConstructorUsedError;
}
