// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_investment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnModel _$ReturnModelFromJson(Map<String, dynamic> json) {
  return _ReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnModel {
  @JsonKey(name: "year")
  num? get year => throw _privateConstructorUsedError;
  @JsonKey(name: "info")
  InfoModel? get info => throw _privateConstructorUsedError;
  @JsonKey(name: "info")
  set info(InfoModel? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnModelCopyWith<ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnModelCopyWith<$Res> {
  factory $ReturnModelCopyWith(
          ReturnModel value, $Res Function(ReturnModel) then) =
      _$ReturnModelCopyWithImpl<$Res, ReturnModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "year") num? year,
      @JsonKey(name: "info") InfoModel? info});

  $InfoModelCopyWith<$Res>? get info;
}

/// @nodoc
class _$ReturnModelCopyWithImpl<$Res, $Val extends ReturnModel>
    implements $ReturnModelCopyWith<$Res> {
  _$ReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoModelCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReturnModelCopyWith<$Res>
    implements $ReturnModelCopyWith<$Res> {
  factory _$$_ReturnModelCopyWith(
          _$_ReturnModel value, $Res Function(_$_ReturnModel) then) =
      __$$_ReturnModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "year") num? year,
      @JsonKey(name: "info") InfoModel? info});

  @override
  $InfoModelCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_ReturnModelCopyWithImpl<$Res>
    extends _$ReturnModelCopyWithImpl<$Res, _$_ReturnModel>
    implements _$$_ReturnModelCopyWith<$Res> {
  __$$_ReturnModelCopyWithImpl(
      _$_ReturnModel _value, $Res Function(_$_ReturnModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_ReturnModel(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnModel implements _ReturnModel {
  _$_ReturnModel(
      {@JsonKey(name: "year") this.year, @JsonKey(name: "info") this.info});

  factory _$_ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnModelFromJson(json);

  @override
  @JsonKey(name: "year")
  final num? year;
  @override
  @JsonKey(name: "info")
  InfoModel? info;

  @override
  String toString() {
    return 'ReturnModel(year: $year, info: $info)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnModelCopyWith<_$_ReturnModel> get copyWith =>
      __$$_ReturnModelCopyWithImpl<_$_ReturnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnModelToJson(
      this,
    );
  }
}

abstract class _ReturnModel implements ReturnModel {
  factory _ReturnModel(
      {@JsonKey(name: "year") final num? year,
      @JsonKey(name: "info") InfoModel? info}) = _$_ReturnModel;

  factory _ReturnModel.fromJson(Map<String, dynamic> json) =
      _$_ReturnModel.fromJson;

  @override
  @JsonKey(name: "year")
  num? get year;
  @override
  @JsonKey(name: "info")
  InfoModel? get info;
  @JsonKey(name: "info")
  set info(InfoModel? value);
  @override
  @JsonKey(ignore: true)
  _$$_ReturnModelCopyWith<_$_ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}
