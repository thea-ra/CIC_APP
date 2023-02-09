// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelCompany _$ModelCompanyFromJson(Map<String, dynamic> json) {
  return _ModelCompany.fromJson(json);
}

/// @nodoc
mixin _$ModelCompany {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "member_id")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "company_logo")
  String? get companylogo => throw _privateConstructorUsedError;
  @JsonKey(name: "company_slogan")
  String? get companyslogan => throw _privateConstructorUsedError;
  @JsonKey(name: "company_product_and_service")
  String? get companyproductandservice => throw _privateConstructorUsedError;
  @JsonKey(name: "company_profile")
  String? get companyprofile => throw _privateConstructorUsedError;
  @JsonKey(name: "street_no")
  String? get streetno => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyname => throw _privateConstructorUsedError;
  @JsonKey(name: "personal_interest")
  String? get personalinterest => throw _privateConstructorUsedError;
  @JsonKey(name: "company_diagnostic_report")
  String? get report => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCompanyCopyWith<ModelCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCompanyCopyWith<$Res> {
  factory $ModelCompanyCopyWith(
          ModelCompany value, $Res Function(ModelCompany) then) =
      _$ModelCompanyCopyWithImpl<$Res, ModelCompany>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "member_id")
          int? code,
      @JsonKey(name: "company_logo")
          String? companylogo,
      @JsonKey(name: "company_slogan")
          String? companyslogan,
      @JsonKey(name: "company_product_and_service")
          String? companyproductandservice,
      @JsonKey(name: "company_profile")
          String? companyprofile,
      @JsonKey(name: "street_no")
          String? streetno,
      @JsonKey(name: "address")
          String? address,
      @JsonKey(name: "phone_number")
          String? phone,
      @JsonKey(name: "email")
          String? email,
      @JsonKey(name: "company_name")
          String? companyname,
      @JsonKey(name: "personal_interest")
          String? personalinterest,
      @JsonKey(name: "company_diagnostic_report")
          String? report});
}

/// @nodoc
class _$ModelCompanyCopyWithImpl<$Res, $Val extends ModelCompany>
    implements $ModelCompanyCopyWith<$Res> {
  _$ModelCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? companylogo = freezed,
    Object? companyslogan = freezed,
    Object? companyproductandservice = freezed,
    Object? companyprofile = freezed,
    Object? streetno = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? companyname = freezed,
    Object? personalinterest = freezed,
    Object? report = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      companylogo: freezed == companylogo
          ? _value.companylogo
          : companylogo // ignore: cast_nullable_to_non_nullable
              as String?,
      companyslogan: freezed == companyslogan
          ? _value.companyslogan
          : companyslogan // ignore: cast_nullable_to_non_nullable
              as String?,
      companyproductandservice: freezed == companyproductandservice
          ? _value.companyproductandservice
          : companyproductandservice // ignore: cast_nullable_to_non_nullable
              as String?,
      companyprofile: freezed == companyprofile
          ? _value.companyprofile
          : companyprofile // ignore: cast_nullable_to_non_nullable
              as String?,
      streetno: freezed == streetno
          ? _value.streetno
          : streetno // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      companyname: freezed == companyname
          ? _value.companyname
          : companyname // ignore: cast_nullable_to_non_nullable
              as String?,
      personalinterest: freezed == personalinterest
          ? _value.personalinterest
          : personalinterest // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelCompanyCopyWith<$Res>
    implements $ModelCompanyCopyWith<$Res> {
  factory _$$_ModelCompanyCopyWith(
          _$_ModelCompany value, $Res Function(_$_ModelCompany) then) =
      __$$_ModelCompanyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "member_id")
          int? code,
      @JsonKey(name: "company_logo")
          String? companylogo,
      @JsonKey(name: "company_slogan")
          String? companyslogan,
      @JsonKey(name: "company_product_and_service")
          String? companyproductandservice,
      @JsonKey(name: "company_profile")
          String? companyprofile,
      @JsonKey(name: "street_no")
          String? streetno,
      @JsonKey(name: "address")
          String? address,
      @JsonKey(name: "phone_number")
          String? phone,
      @JsonKey(name: "email")
          String? email,
      @JsonKey(name: "company_name")
          String? companyname,
      @JsonKey(name: "personal_interest")
          String? personalinterest,
      @JsonKey(name: "company_diagnostic_report")
          String? report});
}

/// @nodoc
class __$$_ModelCompanyCopyWithImpl<$Res>
    extends _$ModelCompanyCopyWithImpl<$Res, _$_ModelCompany>
    implements _$$_ModelCompanyCopyWith<$Res> {
  __$$_ModelCompanyCopyWithImpl(
      _$_ModelCompany _value, $Res Function(_$_ModelCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? companylogo = freezed,
    Object? companyslogan = freezed,
    Object? companyproductandservice = freezed,
    Object? companyprofile = freezed,
    Object? streetno = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? companyname = freezed,
    Object? personalinterest = freezed,
    Object? report = freezed,
  }) {
    return _then(_$_ModelCompany(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      companylogo: freezed == companylogo
          ? _value.companylogo
          : companylogo // ignore: cast_nullable_to_non_nullable
              as String?,
      companyslogan: freezed == companyslogan
          ? _value.companyslogan
          : companyslogan // ignore: cast_nullable_to_non_nullable
              as String?,
      companyproductandservice: freezed == companyproductandservice
          ? _value.companyproductandservice
          : companyproductandservice // ignore: cast_nullable_to_non_nullable
              as String?,
      companyprofile: freezed == companyprofile
          ? _value.companyprofile
          : companyprofile // ignore: cast_nullable_to_non_nullable
              as String?,
      streetno: freezed == streetno
          ? _value.streetno
          : streetno // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      companyname: freezed == companyname
          ? _value.companyname
          : companyname // ignore: cast_nullable_to_non_nullable
              as String?,
      personalinterest: freezed == personalinterest
          ? _value.personalinterest
          : personalinterest // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelCompany implements _ModelCompany {
  _$_ModelCompany(
      {@JsonKey(name: "id")
          this.id,
      @JsonKey(name: "member_id")
          this.code,
      @JsonKey(name: "company_logo")
          this.companylogo,
      @JsonKey(name: "company_slogan")
          this.companyslogan,
      @JsonKey(name: "company_product_and_service")
          this.companyproductandservice,
      @JsonKey(name: "company_profile")
          this.companyprofile,
      @JsonKey(name: "street_no")
          this.streetno,
      @JsonKey(name: "address")
          this.address,
      @JsonKey(name: "phone_number")
          this.phone,
      @JsonKey(name: "email")
          this.email,
      @JsonKey(name: "company_name")
          this.companyname,
      @JsonKey(name: "personal_interest")
          this.personalinterest,
      @JsonKey(name: "company_diagnostic_report")
          this.report});

  factory _$_ModelCompany.fromJson(Map<String, dynamic> json) =>
      _$$_ModelCompanyFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "member_id")
  final int? code;
  @override
  @JsonKey(name: "company_logo")
  final String? companylogo;
  @override
  @JsonKey(name: "company_slogan")
  final String? companyslogan;
  @override
  @JsonKey(name: "company_product_and_service")
  final String? companyproductandservice;
  @override
  @JsonKey(name: "company_profile")
  final String? companyprofile;
  @override
  @JsonKey(name: "street_no")
  final String? streetno;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "phone_number")
  final String? phone;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "company_name")
  final String? companyname;
  @override
  @JsonKey(name: "personal_interest")
  final String? personalinterest;
  @override
  @JsonKey(name: "company_diagnostic_report")
  final String? report;

  @override
  String toString() {
    return 'ModelCompany(id: $id, code: $code, companylogo: $companylogo, companyslogan: $companyslogan, companyproductandservice: $companyproductandservice, companyprofile: $companyprofile, streetno: $streetno, address: $address, phone: $phone, email: $email, companyname: $companyname, personalinterest: $personalinterest, report: $report)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelCompany &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.companylogo, companylogo) ||
                other.companylogo == companylogo) &&
            (identical(other.companyslogan, companyslogan) ||
                other.companyslogan == companyslogan) &&
            (identical(
                    other.companyproductandservice, companyproductandservice) ||
                other.companyproductandservice == companyproductandservice) &&
            (identical(other.companyprofile, companyprofile) ||
                other.companyprofile == companyprofile) &&
            (identical(other.streetno, streetno) ||
                other.streetno == streetno) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.companyname, companyname) ||
                other.companyname == companyname) &&
            (identical(other.personalinterest, personalinterest) ||
                other.personalinterest == personalinterest) &&
            (identical(other.report, report) || other.report == report));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      companylogo,
      companyslogan,
      companyproductandservice,
      companyprofile,
      streetno,
      address,
      phone,
      email,
      companyname,
      personalinterest,
      report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelCompanyCopyWith<_$_ModelCompany> get copyWith =>
      __$$_ModelCompanyCopyWithImpl<_$_ModelCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelCompanyToJson(
      this,
    );
  }
}

abstract class _ModelCompany implements ModelCompany {
  factory _ModelCompany(
      {@JsonKey(name: "id")
          final int? id,
      @JsonKey(name: "member_id")
          final int? code,
      @JsonKey(name: "company_logo")
          final String? companylogo,
      @JsonKey(name: "company_slogan")
          final String? companyslogan,
      @JsonKey(name: "company_product_and_service")
          final String? companyproductandservice,
      @JsonKey(name: "company_profile")
          final String? companyprofile,
      @JsonKey(name: "street_no")
          final String? streetno,
      @JsonKey(name: "address")
          final String? address,
      @JsonKey(name: "phone_number")
          final String? phone,
      @JsonKey(name: "email")
          final String? email,
      @JsonKey(name: "company_name")
          final String? companyname,
      @JsonKey(name: "personal_interest")
          final String? personalinterest,
      @JsonKey(name: "company_diagnostic_report")
          final String? report}) = _$_ModelCompany;

  factory _ModelCompany.fromJson(Map<String, dynamic> json) =
      _$_ModelCompany.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "member_id")
  int? get code;
  @override
  @JsonKey(name: "company_logo")
  String? get companylogo;
  @override
  @JsonKey(name: "company_slogan")
  String? get companyslogan;
  @override
  @JsonKey(name: "company_product_and_service")
  String? get companyproductandservice;
  @override
  @JsonKey(name: "company_profile")
  String? get companyprofile;
  @override
  @JsonKey(name: "street_no")
  String? get streetno;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "phone_number")
  String? get phone;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "company_name")
  String? get companyname;
  @override
  @JsonKey(name: "personal_interest")
  String? get personalinterest;
  @override
  @JsonKey(name: "company_diagnostic_report")
  String? get report;
  @override
  @JsonKey(ignore: true)
  _$$_ModelCompanyCopyWith<_$_ModelCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
