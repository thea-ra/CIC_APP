// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) {
  return _PhoneModel.fromJson(json);
}

/// @nodoc
mixin _$PhoneModel {
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String? get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneModelCopyWith<PhoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneModelCopyWith<$Res> {
  factory $PhoneModelCopyWith(
          PhoneModel value, $Res Function(PhoneModel) then) =
      _$PhoneModelCopyWithImpl<$Res, PhoneModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "phone") String? phone,
      @JsonKey(name: "mobile") String? mobile});
}

/// @nodoc
class _$PhoneModelCopyWithImpl<$Res, $Val extends PhoneModel>
    implements $PhoneModelCopyWith<$Res> {
  _$PhoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneModelCopyWith<$Res>
    implements $PhoneModelCopyWith<$Res> {
  factory _$$_PhoneModelCopyWith(
          _$_PhoneModel value, $Res Function(_$_PhoneModel) then) =
      __$$_PhoneModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "phone") String? phone,
      @JsonKey(name: "mobile") String? mobile});
}

/// @nodoc
class __$$_PhoneModelCopyWithImpl<$Res>
    extends _$PhoneModelCopyWithImpl<$Res, _$_PhoneModel>
    implements _$$_PhoneModelCopyWith<$Res> {
  __$$_PhoneModelCopyWithImpl(
      _$_PhoneModel _value, $Res Function(_$_PhoneModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$_PhoneModel(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhoneModel implements _PhoneModel {
  _$_PhoneModel(
      {@JsonKey(name: "phone") this.phone,
      @JsonKey(name: "mobile") this.mobile});

  factory _$_PhoneModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneModelFromJson(json);

  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "mobile")
  final String? mobile;

  @override
  String toString() {
    return 'PhoneModel(phone: $phone, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneModel &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneModelCopyWith<_$_PhoneModel> get copyWith =>
      __$$_PhoneModelCopyWithImpl<_$_PhoneModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneModelToJson(
      this,
    );
  }
}

abstract class _PhoneModel implements PhoneModel {
  factory _PhoneModel(
      {@JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "mobile") final String? mobile}) = _$_PhoneModel;

  factory _PhoneModel.fromJson(Map<String, dynamic> json) =
      _$_PhoneModel.fromJson;

  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "mobile")
  String? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneModelCopyWith<_$_PhoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}
