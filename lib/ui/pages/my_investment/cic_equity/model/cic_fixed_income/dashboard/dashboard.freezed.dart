// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelDashboard _$ModelDashboardFromJson(Map<String, dynamic> json) {
  return _ModelDashboard.fromJson(json);
}

/// @nodoc
mixin _$ModelDashboard {
  @JsonKey(name: "total_share_outstanding")
  num? get totalshareoutstanding => throw _privateConstructorUsedError;
  @JsonKey(name: "total_net_worth")
  num? get totalnetworth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelDashboardCopyWith<ModelDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDashboardCopyWith<$Res> {
  factory $ModelDashboardCopyWith(
          ModelDashboard value, $Res Function(ModelDashboard) then) =
      _$ModelDashboardCopyWithImpl<$Res, ModelDashboard>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_share_outstanding") num? totalshareoutstanding,
      @JsonKey(name: "total_net_worth") num? totalnetworth});
}

/// @nodoc
class _$ModelDashboardCopyWithImpl<$Res, $Val extends ModelDashboard>
    implements $ModelDashboardCopyWith<$Res> {
  _$ModelDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalshareoutstanding = freezed,
    Object? totalnetworth = freezed,
  }) {
    return _then(_value.copyWith(
      totalshareoutstanding: freezed == totalshareoutstanding
          ? _value.totalshareoutstanding
          : totalshareoutstanding // ignore: cast_nullable_to_non_nullable
              as num?,
      totalnetworth: freezed == totalnetworth
          ? _value.totalnetworth
          : totalnetworth // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelDashboardCopyWith<$Res>
    implements $ModelDashboardCopyWith<$Res> {
  factory _$$_ModelDashboardCopyWith(
          _$_ModelDashboard value, $Res Function(_$_ModelDashboard) then) =
      __$$_ModelDashboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_share_outstanding") num? totalshareoutstanding,
      @JsonKey(name: "total_net_worth") num? totalnetworth});
}

/// @nodoc
class __$$_ModelDashboardCopyWithImpl<$Res>
    extends _$ModelDashboardCopyWithImpl<$Res, _$_ModelDashboard>
    implements _$$_ModelDashboardCopyWith<$Res> {
  __$$_ModelDashboardCopyWithImpl(
      _$_ModelDashboard _value, $Res Function(_$_ModelDashboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalshareoutstanding = freezed,
    Object? totalnetworth = freezed,
  }) {
    return _then(_$_ModelDashboard(
      totalshareoutstanding: freezed == totalshareoutstanding
          ? _value.totalshareoutstanding
          : totalshareoutstanding // ignore: cast_nullable_to_non_nullable
              as num?,
      totalnetworth: freezed == totalnetworth
          ? _value.totalnetworth
          : totalnetworth // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelDashboard implements _ModelDashboard {
  _$_ModelDashboard(
      {@JsonKey(name: "total_share_outstanding") this.totalshareoutstanding,
      @JsonKey(name: "total_net_worth") this.totalnetworth});

  factory _$_ModelDashboard.fromJson(Map<String, dynamic> json) =>
      _$$_ModelDashboardFromJson(json);

  @override
  @JsonKey(name: "total_share_outstanding")
  final num? totalshareoutstanding;
  @override
  @JsonKey(name: "total_net_worth")
  final num? totalnetworth;

  @override
  String toString() {
    return 'ModelDashboard(totalshareoutstanding: $totalshareoutstanding, totalnetworth: $totalnetworth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelDashboard &&
            (identical(other.totalshareoutstanding, totalshareoutstanding) ||
                other.totalshareoutstanding == totalshareoutstanding) &&
            (identical(other.totalnetworth, totalnetworth) ||
                other.totalnetworth == totalnetworth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalshareoutstanding, totalnetworth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelDashboardCopyWith<_$_ModelDashboard> get copyWith =>
      __$$_ModelDashboardCopyWithImpl<_$_ModelDashboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelDashboardToJson(
      this,
    );
  }
}

abstract class _ModelDashboard implements ModelDashboard {
  factory _ModelDashboard(
      {@JsonKey(name: "total_share_outstanding")
          final num? totalshareoutstanding,
      @JsonKey(name: "total_net_worth")
          final num? totalnetworth}) = _$_ModelDashboard;

  factory _ModelDashboard.fromJson(Map<String, dynamic> json) =
      _$_ModelDashboard.fromJson;

  @override
  @JsonKey(name: "total_share_outstanding")
  num? get totalshareoutstanding;
  @override
  @JsonKey(name: "total_net_worth")
  num? get totalnetworth;
  @override
  @JsonKey(ignore: true)
  _$$_ModelDashboardCopyWith<_$_ModelDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}
