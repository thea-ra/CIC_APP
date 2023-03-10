// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return _InfoModel.fromJson(json);
}

/// @nodoc
mixin _$InfoModel {
  @JsonKey(name: "capital_gain")
  String? get capitalgain => throw _privateConstructorUsedError;
  @JsonKey(name: "dividend")
  String? get dividend => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoModelCopyWith<InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoModelCopyWith<$Res> {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) then) =
      _$InfoModelCopyWithImpl<$Res, InfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "capital_gain") String? capitalgain,
      @JsonKey(name: "dividend") String? dividend,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class _$InfoModelCopyWithImpl<$Res, $Val extends InfoModel>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capitalgain = freezed,
    Object? dividend = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      capitalgain: freezed == capitalgain
          ? _value.capitalgain
          : capitalgain // ignore: cast_nullable_to_non_nullable
              as String?,
      dividend: freezed == dividend
          ? _value.dividend
          : dividend // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoModelCopyWith<$Res> implements $InfoModelCopyWith<$Res> {
  factory _$$_InfoModelCopyWith(
          _$_InfoModel value, $Res Function(_$_InfoModel) then) =
      __$$_InfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "capital_gain") String? capitalgain,
      @JsonKey(name: "dividend") String? dividend,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class __$$_InfoModelCopyWithImpl<$Res>
    extends _$InfoModelCopyWithImpl<$Res, _$_InfoModel>
    implements _$$_InfoModelCopyWith<$Res> {
  __$$_InfoModelCopyWithImpl(
      _$_InfoModel _value, $Res Function(_$_InfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capitalgain = freezed,
    Object? dividend = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_InfoModel(
      capitalgain: freezed == capitalgain
          ? _value.capitalgain
          : capitalgain // ignore: cast_nullable_to_non_nullable
              as String?,
      dividend: freezed == dividend
          ? _value.dividend
          : dividend // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoModel implements _InfoModel {
  _$_InfoModel(
      {@JsonKey(name: "capital_gain") this.capitalgain,
      @JsonKey(name: "dividend") this.dividend,
      @JsonKey(name: "total") this.total});

  factory _$_InfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfoModelFromJson(json);

  @override
  @JsonKey(name: "capital_gain")
  final String? capitalgain;
  @override
  @JsonKey(name: "dividend")
  final String? dividend;
  @override
  @JsonKey(name: "total")
  final String? total;

  @override
  String toString() {
    return 'InfoModel(capitalgain: $capitalgain, dividend: $dividend, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoModel &&
            (identical(other.capitalgain, capitalgain) ||
                other.capitalgain == capitalgain) &&
            (identical(other.dividend, dividend) ||
                other.dividend == dividend) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, capitalgain, dividend, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoModelCopyWith<_$_InfoModel> get copyWith =>
      __$$_InfoModelCopyWithImpl<_$_InfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoModelToJson(
      this,
    );
  }
}

abstract class _InfoModel implements InfoModel {
  factory _InfoModel(
      {@JsonKey(name: "capital_gain") final String? capitalgain,
      @JsonKey(name: "dividend") final String? dividend,
      @JsonKey(name: "total") final String? total}) = _$_InfoModel;

  factory _InfoModel.fromJson(Map<String, dynamic> json) =
      _$_InfoModel.fromJson;

  @override
  @JsonKey(name: "capital_gain")
  String? get capitalgain;
  @override
  @JsonKey(name: "dividend")
  String? get dividend;
  @override
  @JsonKey(name: "total")
  String? get total;
  @override
  @JsonKey(ignore: true)
  _$$_InfoModelCopyWith<_$_InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
