// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "is_customer")
  int? get iscustomer => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int? get customerid => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  String? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: "investment_amount")
  String? get investmentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  String? get dataofbirth => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "is_customer") int? iscustomer,
      @JsonKey(name: "customer_id") int? customerid,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "first_name") String? firstname,
      @JsonKey(name: "full_name") String? fullname,
      @JsonKey(name: "investment_amount") String? investmentAmount,
      @JsonKey(name: "last_name") String? lastname,
      @JsonKey(name: "date_of_birth") String? dataofbirth,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? iscustomer = freezed,
    Object? customerid = freezed,
    Object? profile = freezed,
    Object? firstname = freezed,
    Object? fullname = freezed,
    Object? investmentAmount = freezed,
    Object? lastname = freezed,
    Object? dataofbirth = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      iscustomer: freezed == iscustomer
          ? _value.iscustomer
          : iscustomer // ignore: cast_nullable_to_non_nullable
              as int?,
      customerid: freezed == customerid
          ? _value.customerid
          : customerid // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      dataofbirth: freezed == dataofbirth
          ? _value.dataofbirth
          : dataofbirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$_AccountModelCopyWith(
          _$_AccountModel value, $Res Function(_$_AccountModel) then) =
      __$$_AccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "is_customer") int? iscustomer,
      @JsonKey(name: "customer_id") int? customerid,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "first_name") String? firstname,
      @JsonKey(name: "full_name") String? fullname,
      @JsonKey(name: "investment_amount") String? investmentAmount,
      @JsonKey(name: "last_name") String? lastname,
      @JsonKey(name: "date_of_birth") String? dataofbirth,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class __$$_AccountModelCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$_AccountModel>
    implements _$$_AccountModelCopyWith<$Res> {
  __$$_AccountModelCopyWithImpl(
      _$_AccountModel _value, $Res Function(_$_AccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? iscustomer = freezed,
    Object? customerid = freezed,
    Object? profile = freezed,
    Object? firstname = freezed,
    Object? fullname = freezed,
    Object? investmentAmount = freezed,
    Object? lastname = freezed,
    Object? dataofbirth = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_AccountModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      iscustomer: freezed == iscustomer
          ? _value.iscustomer
          : iscustomer // ignore: cast_nullable_to_non_nullable
              as int?,
      customerid: freezed == customerid
          ? _value.customerid
          : customerid // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      dataofbirth: freezed == dataofbirth
          ? _value.dataofbirth
          : dataofbirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountModel implements _AccountModel {
  _$_AccountModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "is_customer") this.iscustomer,
      @JsonKey(name: "customer_id") this.customerid,
      @JsonKey(name: "profile") this.profile,
      @JsonKey(name: "first_name") this.firstname,
      @JsonKey(name: "full_name") this.fullname,
      @JsonKey(name: "investment_amount") this.investmentAmount,
      @JsonKey(name: "last_name") this.lastname,
      @JsonKey(name: "date_of_birth") this.dataofbirth,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "email") this.email});

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "is_customer")
  final int? iscustomer;
  @override
  @JsonKey(name: "customer_id")
  final int? customerid;
  @override
  @JsonKey(name: "profile")
  final String? profile;
  @override
  @JsonKey(name: "first_name")
  final String? firstname;
  @override
  @JsonKey(name: "full_name")
  final String? fullname;
  @override
  @JsonKey(name: "investment_amount")
  final String? investmentAmount;
  @override
  @JsonKey(name: "last_name")
  final String? lastname;
  @override
  @JsonKey(name: "date_of_birth")
  final String? dataofbirth;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "email")
  final String? email;

  @override
  String toString() {
    return 'AccountModel(id: $id, code: $code, iscustomer: $iscustomer, customerid: $customerid, profile: $profile, firstname: $firstname, fullname: $fullname, investmentAmount: $investmentAmount, lastname: $lastname, dataofbirth: $dataofbirth, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.iscustomer, iscustomer) ||
                other.iscustomer == iscustomer) &&
            (identical(other.customerid, customerid) ||
                other.customerid == customerid) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.investmentAmount, investmentAmount) ||
                other.investmentAmount == investmentAmount) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.dataofbirth, dataofbirth) ||
                other.dataofbirth == dataofbirth) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      iscustomer,
      customerid,
      profile,
      firstname,
      fullname,
      investmentAmount,
      lastname,
      dataofbirth,
      phone,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      __$$_AccountModelCopyWithImpl<_$_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountModelToJson(
      this,
    );
  }
}

abstract class _AccountModel implements AccountModel {
  factory _AccountModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "code") final String? code,
      @JsonKey(name: "is_customer") final int? iscustomer,
      @JsonKey(name: "customer_id") final int? customerid,
      @JsonKey(name: "profile") final String? profile,
      @JsonKey(name: "first_name") final String? firstname,
      @JsonKey(name: "full_name") final String? fullname,
      @JsonKey(name: "investment_amount") final String? investmentAmount,
      @JsonKey(name: "last_name") final String? lastname,
      @JsonKey(name: "date_of_birth") final String? dataofbirth,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "email") final String? email}) = _$_AccountModel;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "is_customer")
  int? get iscustomer;
  @override
  @JsonKey(name: "customer_id")
  int? get customerid;
  @override
  @JsonKey(name: "profile")
  String? get profile;
  @override
  @JsonKey(name: "first_name")
  String? get firstname;
  @override
  @JsonKey(name: "full_name")
  String? get fullname;
  @override
  @JsonKey(name: "investment_amount")
  String? get investmentAmount;
  @override
  @JsonKey(name: "last_name")
  String? get lastname;
  @override
  @JsonKey(name: "date_of_birth")
  String? get dataofbirth;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
