// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companymodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyMode _$CompanyModeFromJson(Map<String, dynamic> json) {
  return _CompanyMode.fromJson(json);
}

/// @nodoc
mixin _$CompanyMode {
// ignore: invalid_annotation_target
  @JsonKey(name: "name")
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "catchPhrase")
  String? get catchPhrase =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "bs")
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyModeCopyWith<CompanyMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModeCopyWith<$Res> {
  factory $CompanyModeCopyWith(
          CompanyMode value, $Res Function(CompanyMode) then) =
      _$CompanyModeCopyWithImpl<$Res, CompanyMode>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "catchPhrase") String? catchPhrase,
      @JsonKey(name: "bs") String? bs});
}

/// @nodoc
class _$CompanyModeCopyWithImpl<$Res, $Val extends CompanyMode>
    implements $CompanyModeCopyWith<$Res> {
  _$CompanyModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyModeCopyWith<$Res>
    implements $CompanyModeCopyWith<$Res> {
  factory _$$_CompanyModeCopyWith(
          _$_CompanyMode value, $Res Function(_$_CompanyMode) then) =
      __$$_CompanyModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "catchPhrase") String? catchPhrase,
      @JsonKey(name: "bs") String? bs});
}

/// @nodoc
class __$$_CompanyModeCopyWithImpl<$Res>
    extends _$CompanyModeCopyWithImpl<$Res, _$_CompanyMode>
    implements _$$_CompanyModeCopyWith<$Res> {
  __$$_CompanyModeCopyWithImpl(
      _$_CompanyMode _value, $Res Function(_$_CompanyMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_CompanyMode(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyMode implements _CompanyMode {
  _$_CompanyMode(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "catchPhrase") this.catchPhrase,
      @JsonKey(name: "bs") this.bs});

  factory _$_CompanyMode.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyModeFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "name")
  final String? name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "catchPhrase")
  final String? catchPhrase;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "bs")
  final String? bs;

  @override
  String toString() {
    return 'CompanyMode(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyMode &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyModeCopyWith<_$_CompanyMode> get copyWith =>
      __$$_CompanyModeCopyWithImpl<_$_CompanyMode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyModeToJson(
      this,
    );
  }
}

abstract class _CompanyMode implements CompanyMode {
  factory _CompanyMode(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "catchPhrase") final String? catchPhrase,
      @JsonKey(name: "bs") final String? bs}) = _$_CompanyMode;

  factory _CompanyMode.fromJson(Map<String, dynamic> json) =
      _$_CompanyMode.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "name")
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "catchPhrase")
  String? get catchPhrase;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "bs")
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyModeCopyWith<_$_CompanyMode> get copyWith =>
      throw _privateConstructorUsedError;
}
