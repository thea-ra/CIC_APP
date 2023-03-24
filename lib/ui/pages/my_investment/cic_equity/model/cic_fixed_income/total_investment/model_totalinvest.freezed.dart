// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_totalinvest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelTotalInvestment _$ModelTotalInvestmentFromJson(Map<String, dynamic> json) {
  return _ModelTotalInvestment.fromJson(json);
}

/// @nodoc
mixin _$ModelTotalInvestment {
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "total_investment")
  String? get totalinvestment => throw _privateConstructorUsedError;
  @JsonKey(name: "hide")
  bool? get hide => throw _privateConstructorUsedError;
  @JsonKey(name: "about_fif")
  String? get aboutfif => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelTotalInvestmentCopyWith<ModelTotalInvestment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelTotalInvestmentCopyWith<$Res> {
  factory $ModelTotalInvestmentCopyWith(ModelTotalInvestment value,
          $Res Function(ModelTotalInvestment) then) =
      _$ModelTotalInvestmentCopyWithImpl<$Res, ModelTotalInvestment>;
  @useResult
  $Res call(
      {@JsonKey(name: "currency") String? currency,
      @JsonKey(name: "total_investment") String? totalinvestment,
      @JsonKey(name: "hide") bool? hide,
      @JsonKey(name: "about_fif") String? aboutfif});
}

/// @nodoc
class _$ModelTotalInvestmentCopyWithImpl<$Res,
        $Val extends ModelTotalInvestment>
    implements $ModelTotalInvestmentCopyWith<$Res> {
  _$ModelTotalInvestmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? totalinvestment = freezed,
    Object? hide = freezed,
    Object? aboutfif = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      totalinvestment: freezed == totalinvestment
          ? _value.totalinvestment
          : totalinvestment // ignore: cast_nullable_to_non_nullable
              as String?,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      aboutfif: freezed == aboutfif
          ? _value.aboutfif
          : aboutfif // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelTotalInvestmentCopyWith<$Res>
    implements $ModelTotalInvestmentCopyWith<$Res> {
  factory _$$_ModelTotalInvestmentCopyWith(_$_ModelTotalInvestment value,
          $Res Function(_$_ModelTotalInvestment) then) =
      __$$_ModelTotalInvestmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currency") String? currency,
      @JsonKey(name: "total_investment") String? totalinvestment,
      @JsonKey(name: "hide") bool? hide,
      @JsonKey(name: "about_fif") String? aboutfif});
}

/// @nodoc
class __$$_ModelTotalInvestmentCopyWithImpl<$Res>
    extends _$ModelTotalInvestmentCopyWithImpl<$Res, _$_ModelTotalInvestment>
    implements _$$_ModelTotalInvestmentCopyWith<$Res> {
  __$$_ModelTotalInvestmentCopyWithImpl(_$_ModelTotalInvestment _value,
      $Res Function(_$_ModelTotalInvestment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? totalinvestment = freezed,
    Object? hide = freezed,
    Object? aboutfif = freezed,
  }) {
    return _then(_$_ModelTotalInvestment(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      totalinvestment: freezed == totalinvestment
          ? _value.totalinvestment
          : totalinvestment // ignore: cast_nullable_to_non_nullable
              as String?,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      aboutfif: freezed == aboutfif
          ? _value.aboutfif
          : aboutfif // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelTotalInvestment implements _ModelTotalInvestment {
  _$_ModelTotalInvestment(
      {@JsonKey(name: "currency") this.currency,
      @JsonKey(name: "total_investment") this.totalinvestment,
      @JsonKey(name: "hide") this.hide,
      @JsonKey(name: "about_fif") this.aboutfif});

  factory _$_ModelTotalInvestment.fromJson(Map<String, dynamic> json) =>
      _$$_ModelTotalInvestmentFromJson(json);

  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "total_investment")
  final String? totalinvestment;
  @override
  @JsonKey(name: "hide")
  final bool? hide;
  @override
  @JsonKey(name: "about_fif")
  final String? aboutfif;

  @override
  String toString() {
    return 'ModelTotalInvestment(currency: $currency, totalinvestment: $totalinvestment, hide: $hide, aboutfif: $aboutfif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelTotalInvestment &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalinvestment, totalinvestment) ||
                other.totalinvestment == totalinvestment) &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.aboutfif, aboutfif) ||
                other.aboutfif == aboutfif));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currency, totalinvestment, hide, aboutfif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelTotalInvestmentCopyWith<_$_ModelTotalInvestment> get copyWith =>
      __$$_ModelTotalInvestmentCopyWithImpl<_$_ModelTotalInvestment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelTotalInvestmentToJson(
      this,
    );
  }
}

abstract class _ModelTotalInvestment implements ModelTotalInvestment {
  factory _ModelTotalInvestment(
          {@JsonKey(name: "currency") final String? currency,
          @JsonKey(name: "total_investment") final String? totalinvestment,
          @JsonKey(name: "hide") final bool? hide,
          @JsonKey(name: "about_fif") final String? aboutfif}) =
      _$_ModelTotalInvestment;

  factory _ModelTotalInvestment.fromJson(Map<String, dynamic> json) =
      _$_ModelTotalInvestment.fromJson;

  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "total_investment")
  String? get totalinvestment;
  @override
  @JsonKey(name: "hide")
  bool? get hide;
  @override
  @JsonKey(name: "about_fif")
  String? get aboutfif;
  @override
  @JsonKey(ignore: true)
  _$$_ModelTotalInvestmentCopyWith<_$_ModelTotalInvestment> get copyWith =>
      throw _privateConstructorUsedError;
}
