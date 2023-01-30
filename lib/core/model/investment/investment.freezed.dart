// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvestmentModel _$InvestmentModelFromJson(Map<String, dynamic> json) {
  return _InvestmentModel.fromJson(json);
}

/// @nodoc
mixin _$InvestmentModel {
  @JsonKey(name: "id")
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price_unformat")
  num? get priceunformat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentModelCopyWith<InvestmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentModelCopyWith<$Res> {
  factory $InvestmentModelCopyWith(
          InvestmentModel value, $Res Function(InvestmentModel) then) =
      _$InvestmentModelCopyWithImpl<$Res, InvestmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") num? id,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "price_unformat") num? priceunformat});
}

/// @nodoc
class _$InvestmentModelCopyWithImpl<$Res, $Val extends InvestmentModel>
    implements $InvestmentModelCopyWith<$Res> {
  _$InvestmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? priceunformat = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      priceunformat: freezed == priceunformat
          ? _value.priceunformat
          : priceunformat // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvestmentModelCopyWith<$Res>
    implements $InvestmentModelCopyWith<$Res> {
  factory _$$_InvestmentModelCopyWith(
          _$_InvestmentModel value, $Res Function(_$_InvestmentModel) then) =
      __$$_InvestmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") num? id,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "price_unformat") num? priceunformat});
}

/// @nodoc
class __$$_InvestmentModelCopyWithImpl<$Res>
    extends _$InvestmentModelCopyWithImpl<$Res, _$_InvestmentModel>
    implements _$$_InvestmentModelCopyWith<$Res> {
  __$$_InvestmentModelCopyWithImpl(
      _$_InvestmentModel _value, $Res Function(_$_InvestmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? priceunformat = freezed,
  }) {
    return _then(_$_InvestmentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      priceunformat: freezed == priceunformat
          ? _value.priceunformat
          : priceunformat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvestmentModel implements _InvestmentModel {
  _$_InvestmentModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "price_unformat") this.priceunformat});

  factory _$_InvestmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_InvestmentModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final num? id;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "price_unformat")
  final num? priceunformat;

  @override
  String toString() {
    return 'InvestmentModel(id: $id, price: $price, priceunformat: $priceunformat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvestmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceunformat, priceunformat) ||
                other.priceunformat == priceunformat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, priceunformat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvestmentModelCopyWith<_$_InvestmentModel> get copyWith =>
      __$$_InvestmentModelCopyWithImpl<_$_InvestmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvestmentModelToJson(
      this,
    );
  }
}

abstract class _InvestmentModel implements InvestmentModel {
  factory _InvestmentModel(
          {@JsonKey(name: "id") final num? id,
          @JsonKey(name: "price") final String? price,
          @JsonKey(name: "price_unformat") final num? priceunformat}) =
      _$_InvestmentModel;

  factory _InvestmentModel.fromJson(Map<String, dynamic> json) =
      _$_InvestmentModel.fromJson;

  @override
  @JsonKey(name: "id")
  num? get id;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "price_unformat")
  num? get priceunformat;
  @override
  @JsonKey(ignore: true)
  _$$_InvestmentModelCopyWith<_$_InvestmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
