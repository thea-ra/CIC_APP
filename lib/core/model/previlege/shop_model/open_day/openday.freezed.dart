// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpendayModel _$OpendayModelFromJson(Map<String, dynamic> json) {
  return _OpendayModel.fromJson(json);
}

/// @nodoc
mixin _$OpendayModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "day_name")
  String? get dayName =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "shift_a_hours")
  String? get shiftAHours =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "shift_b_hours")
  String? get shiftBHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpendayModelCopyWith<OpendayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpendayModelCopyWith<$Res> {
  factory $OpendayModelCopyWith(
          OpendayModel value, $Res Function(OpendayModel) then) =
      _$OpendayModelCopyWithImpl<$Res, OpendayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "day_name") String? dayName,
      @JsonKey(name: "shift_a_hours") String? shiftAHours,
      @JsonKey(name: "shift_b_hours") String? shiftBHours});
}

/// @nodoc
class _$OpendayModelCopyWithImpl<$Res, $Val extends OpendayModel>
    implements $OpendayModelCopyWith<$Res> {
  _$OpendayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayName = freezed,
    Object? shiftAHours = freezed,
    Object? shiftBHours = freezed,
  }) {
    return _then(_value.copyWith(
      dayName: freezed == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftAHours: freezed == shiftAHours
          ? _value.shiftAHours
          : shiftAHours // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftBHours: freezed == shiftBHours
          ? _value.shiftBHours
          : shiftBHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpendayModelCopyWith<$Res>
    implements $OpendayModelCopyWith<$Res> {
  factory _$$_OpendayModelCopyWith(
          _$_OpendayModel value, $Res Function(_$_OpendayModel) then) =
      __$$_OpendayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day_name") String? dayName,
      @JsonKey(name: "shift_a_hours") String? shiftAHours,
      @JsonKey(name: "shift_b_hours") String? shiftBHours});
}

/// @nodoc
class __$$_OpendayModelCopyWithImpl<$Res>
    extends _$OpendayModelCopyWithImpl<$Res, _$_OpendayModel>
    implements _$$_OpendayModelCopyWith<$Res> {
  __$$_OpendayModelCopyWithImpl(
      _$_OpendayModel _value, $Res Function(_$_OpendayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayName = freezed,
    Object? shiftAHours = freezed,
    Object? shiftBHours = freezed,
  }) {
    return _then(_$_OpendayModel(
      dayName: freezed == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftAHours: freezed == shiftAHours
          ? _value.shiftAHours
          : shiftAHours // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftBHours: freezed == shiftBHours
          ? _value.shiftBHours
          : shiftBHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpendayModel implements _OpendayModel {
  _$_OpendayModel(
      {@JsonKey(name: "day_name") this.dayName,
      @JsonKey(name: "shift_a_hours") this.shiftAHours,
      @JsonKey(name: "shift_b_hours") this.shiftBHours});

  factory _$_OpendayModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpendayModelFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "day_name")
  final String? dayName;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "shift_a_hours")
  final String? shiftAHours;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "shift_b_hours")
  final String? shiftBHours;

  @override
  String toString() {
    return 'OpendayModel(dayName: $dayName, shiftAHours: $shiftAHours, shiftBHours: $shiftBHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpendayModel &&
            (identical(other.dayName, dayName) || other.dayName == dayName) &&
            (identical(other.shiftAHours, shiftAHours) ||
                other.shiftAHours == shiftAHours) &&
            (identical(other.shiftBHours, shiftBHours) ||
                other.shiftBHours == shiftBHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dayName, shiftAHours, shiftBHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpendayModelCopyWith<_$_OpendayModel> get copyWith =>
      __$$_OpendayModelCopyWithImpl<_$_OpendayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpendayModelToJson(
      this,
    );
  }
}

abstract class _OpendayModel implements OpendayModel {
  factory _OpendayModel(
          {@JsonKey(name: "day_name") final String? dayName,
          @JsonKey(name: "shift_a_hours") final String? shiftAHours,
          @JsonKey(name: "shift_b_hours") final String? shiftBHours}) =
      _$_OpendayModel;

  factory _OpendayModel.fromJson(Map<String, dynamic> json) =
      _$_OpendayModel.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "day_name")
  String? get dayName;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "shift_a_hours")
  String? get shiftAHours;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "shift_b_hours")
  String? get shiftBHours;
  @override
  @JsonKey(ignore: true)
  _$$_OpendayModelCopyWith<_$_OpendayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
