// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelTransaction _$ModelTransactionFromJson(Map<String, dynamic> json) {
  return _ModelTransaction.fromJson(json);
}

/// @nodoc
mixin _$ModelTransaction {
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "histories")
  List<ModelHistory>? get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelTransactionCopyWith<ModelTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelTransactionCopyWith<$Res> {
  factory $ModelTransactionCopyWith(
          ModelTransaction value, $Res Function(ModelTransaction) then) =
      _$ModelTransactionCopyWithImpl<$Res, ModelTransaction>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "histories") List<ModelHistory>? history});
}

/// @nodoc
class _$ModelTransactionCopyWithImpl<$Res, $Val extends ModelTransaction>
    implements $ModelTransactionCopyWith<$Res> {
  _$ModelTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ModelHistory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelTransactionCopyWith<$Res>
    implements $ModelTransactionCopyWith<$Res> {
  factory _$$_ModelTransactionCopyWith(
          _$_ModelTransaction value, $Res Function(_$_ModelTransaction) then) =
      __$$_ModelTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "histories") List<ModelHistory>? history});
}

/// @nodoc
class __$$_ModelTransactionCopyWithImpl<$Res>
    extends _$ModelTransactionCopyWithImpl<$Res, _$_ModelTransaction>
    implements _$$_ModelTransactionCopyWith<$Res> {
  __$$_ModelTransactionCopyWithImpl(
      _$_ModelTransaction _value, $Res Function(_$_ModelTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? history = freezed,
  }) {
    return _then(_$_ModelTransaction(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ModelHistory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelTransaction implements _ModelTransaction {
  _$_ModelTransaction(
      {@JsonKey(name: "date") this.date,
      @JsonKey(name: "histories") final List<ModelHistory>? history})
      : _history = history;

  factory _$_ModelTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_ModelTransactionFromJson(json);

  @override
  @JsonKey(name: "date")
  final String? date;
  final List<ModelHistory>? _history;
  @override
  @JsonKey(name: "histories")
  List<ModelHistory>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelTransaction(date: $date, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelTransaction &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelTransactionCopyWith<_$_ModelTransaction> get copyWith =>
      __$$_ModelTransactionCopyWithImpl<_$_ModelTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelTransactionToJson(
      this,
    );
  }
}

abstract class _ModelTransaction implements ModelTransaction {
  factory _ModelTransaction(
          {@JsonKey(name: "date") final String? date,
          @JsonKey(name: "histories") final List<ModelHistory>? history}) =
      _$_ModelTransaction;

  factory _ModelTransaction.fromJson(Map<String, dynamic> json) =
      _$_ModelTransaction.fromJson;

  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "histories")
  List<ModelHistory>? get history;
  @override
  @JsonKey(ignore: true)
  _$$_ModelTransactionCopyWith<_$_ModelTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
