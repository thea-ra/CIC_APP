// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Synfusion _$SynfusionFromJson(Map<String, dynamic> json) {
  return _Synfusion.fromJson(json);
}

/// @nodoc
mixin _$Synfusion {
// ignore: invalid_annotation_target
  @JsonKey(name: "date")
  String? get date =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "month")
  String? get month =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "year")
  String? get year =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "price")
  num? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SynfusionCopyWith<Synfusion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynfusionCopyWith<$Res> {
  factory $SynfusionCopyWith(Synfusion value, $Res Function(Synfusion) then) =
      _$SynfusionCopyWithImpl<$Res, Synfusion>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "month") String? month,
      @JsonKey(name: "year") String? year,
      @JsonKey(name: "price") num? price});
}

/// @nodoc
class _$SynfusionCopyWithImpl<$Res, $Val extends Synfusion>
    implements $SynfusionCopyWith<$Res> {
  _$SynfusionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SynfusionCopyWith<$Res> implements $SynfusionCopyWith<$Res> {
  factory _$$_SynfusionCopyWith(
          _$_Synfusion value, $Res Function(_$_Synfusion) then) =
      __$$_SynfusionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "month") String? month,
      @JsonKey(name: "year") String? year,
      @JsonKey(name: "price") num? price});
}

/// @nodoc
class __$$_SynfusionCopyWithImpl<$Res>
    extends _$SynfusionCopyWithImpl<$Res, _$_Synfusion>
    implements _$$_SynfusionCopyWith<$Res> {
  __$$_SynfusionCopyWithImpl(
      _$_Synfusion _value, $Res Function(_$_Synfusion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Synfusion(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Synfusion implements _Synfusion {
  _$_Synfusion(
      {@JsonKey(name: "date") this.date,
      @JsonKey(name: "month") this.month,
      @JsonKey(name: "year") this.year,
      @JsonKey(name: "price") this.price});

  factory _$_Synfusion.fromJson(Map<String, dynamic> json) =>
      _$$_SynfusionFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "date")
  final String? date;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "month")
  final String? month;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "year")
  final String? year;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "price")
  final num? price;

  @override
  String toString() {
    return 'Synfusion(date: $date, month: $month, year: $year, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Synfusion &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, month, year, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SynfusionCopyWith<_$_Synfusion> get copyWith =>
      __$$_SynfusionCopyWithImpl<_$_Synfusion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SynfusionToJson(
      this,
    );
  }
}

abstract class _Synfusion implements Synfusion {
  factory _Synfusion(
      {@JsonKey(name: "date") final String? date,
      @JsonKey(name: "month") final String? month,
      @JsonKey(name: "year") final String? year,
      @JsonKey(name: "price") final num? price}) = _$_Synfusion;

  factory _Synfusion.fromJson(Map<String, dynamic> json) =
      _$_Synfusion.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "date")
  String? get date;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "month")
  String? get month;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "year")
  String? get year;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "price")
  num? get price;
  @override
  @JsonKey(ignore: true)
  _$$_SynfusionCopyWith<_$_Synfusion> get copyWith =>
      throw _privateConstructorUsedError;
}
