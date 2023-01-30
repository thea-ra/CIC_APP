// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_nodata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ControllerHomeModel _$ControllerHomeModelFromJson(Map<String, dynamic> json) {
  return _ControllerHomeModel.fromJson(json);
}

/// @nodoc
mixin _$ControllerHomeModel {
  String? get svg => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ControllerHomeModelCopyWith<ControllerHomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControllerHomeModelCopyWith<$Res> {
  factory $ControllerHomeModelCopyWith(
          ControllerHomeModel value, $Res Function(ControllerHomeModel) then) =
      _$ControllerHomeModelCopyWithImpl<$Res, ControllerHomeModel>;
  @useResult
  $Res call({String? svg, String? text});
}

/// @nodoc
class _$ControllerHomeModelCopyWithImpl<$Res, $Val extends ControllerHomeModel>
    implements $ControllerHomeModelCopyWith<$Res> {
  _$ControllerHomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svg = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ControllerHomeModelCopyWith<$Res>
    implements $ControllerHomeModelCopyWith<$Res> {
  factory _$$_ControllerHomeModelCopyWith(_$_ControllerHomeModel value,
          $Res Function(_$_ControllerHomeModel) then) =
      __$$_ControllerHomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? svg, String? text});
}

/// @nodoc
class __$$_ControllerHomeModelCopyWithImpl<$Res>
    extends _$ControllerHomeModelCopyWithImpl<$Res, _$_ControllerHomeModel>
    implements _$$_ControllerHomeModelCopyWith<$Res> {
  __$$_ControllerHomeModelCopyWithImpl(_$_ControllerHomeModel _value,
      $Res Function(_$_ControllerHomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svg = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_ControllerHomeModel(
      svg: freezed == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ControllerHomeModel implements _ControllerHomeModel {
  _$_ControllerHomeModel({this.svg, this.text});

  factory _$_ControllerHomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ControllerHomeModelFromJson(json);

  @override
  final String? svg;
  @override
  final String? text;

  @override
  String toString() {
    return 'ControllerHomeModel(svg: $svg, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ControllerHomeModel &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, svg, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ControllerHomeModelCopyWith<_$_ControllerHomeModel> get copyWith =>
      __$$_ControllerHomeModelCopyWithImpl<_$_ControllerHomeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ControllerHomeModelToJson(
      this,
    );
  }
}

abstract class _ControllerHomeModel implements ControllerHomeModel {
  factory _ControllerHomeModel({final String? svg, final String? text}) =
      _$_ControllerHomeModel;

  factory _ControllerHomeModel.fromJson(Map<String, dynamic> json) =
      _$_ControllerHomeModel.fromJson;

  @override
  String? get svg;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_ControllerHomeModelCopyWith<_$_ControllerHomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
