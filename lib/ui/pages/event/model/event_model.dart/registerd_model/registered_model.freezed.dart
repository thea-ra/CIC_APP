// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registered_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelRegistered _$ModelRegisteredFromJson(Map<String, dynamic> json) {
  return _ModelRegistered.fromJson(json);
}

/// @nodoc
mixin _$ModelRegistered {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "event")
  String? get events => throw _privateConstructorUsedError;
  @JsonKey(name: "event_by")
  String? get eventby => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cic_member")
  bool? get iscicmember => throw _privateConstructorUsedError;
  @JsonKey(name: "participant_name")
  String? get participantname => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "position")
  String? get position => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phonenumber => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "check_in_date")
  String? get checkindate => throw _privateConstructorUsedError;
  @JsonKey(name: "check_in")
  bool? get checkin => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  String? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  bool? get isTap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelRegisteredCopyWith<ModelRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelRegisteredCopyWith<$Res> {
  factory $ModelRegisteredCopyWith(
          ModelRegistered value, $Res Function(ModelRegistered) then) =
      _$ModelRegisteredCopyWithImpl<$Res, ModelRegistered>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "event") String? events,
      @JsonKey(name: "event_by") String? eventby,
      @JsonKey(name: "is_cic_member") bool? iscicmember,
      @JsonKey(name: "participant_name") String? participantname,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "position") String? position,
      @JsonKey(name: "phone_number") String? phonenumber,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "check_in_date") String? checkindate,
      @JsonKey(name: "check_in") bool? checkin,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "name") String? name,
      bool? isTap});
}

/// @nodoc
class _$ModelRegisteredCopyWithImpl<$Res, $Val extends ModelRegistered>
    implements $ModelRegisteredCopyWith<$Res> {
  _$ModelRegisteredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? events = freezed,
    Object? eventby = freezed,
    Object? iscicmember = freezed,
    Object? participantname = freezed,
    Object? companyName = freezed,
    Object? position = freezed,
    Object? phonenumber = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? checkindate = freezed,
    Object? checkin = freezed,
    Object? profile = freezed,
    Object? name = freezed,
    Object? isTap = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as String?,
      eventby: freezed == eventby
          ? _value.eventby
          : eventby // ignore: cast_nullable_to_non_nullable
              as String?,
      iscicmember: freezed == iscicmember
          ? _value.iscicmember
          : iscicmember // ignore: cast_nullable_to_non_nullable
              as bool?,
      participantname: freezed == participantname
          ? _value.participantname
          : participantname // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      phonenumber: freezed == phonenumber
          ? _value.phonenumber
          : phonenumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      checkindate: freezed == checkindate
          ? _value.checkindate
          : checkindate // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin: freezed == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isTap: freezed == isTap
          ? _value.isTap
          : isTap // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelRegisteredCopyWith<$Res>
    implements $ModelRegisteredCopyWith<$Res> {
  factory _$$_ModelRegisteredCopyWith(
          _$_ModelRegistered value, $Res Function(_$_ModelRegistered) then) =
      __$$_ModelRegisteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "event") String? events,
      @JsonKey(name: "event_by") String? eventby,
      @JsonKey(name: "is_cic_member") bool? iscicmember,
      @JsonKey(name: "participant_name") String? participantname,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "position") String? position,
      @JsonKey(name: "phone_number") String? phonenumber,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "check_in_date") String? checkindate,
      @JsonKey(name: "check_in") bool? checkin,
      @JsonKey(name: "profile") String? profile,
      @JsonKey(name: "name") String? name,
      bool? isTap});
}

/// @nodoc
class __$$_ModelRegisteredCopyWithImpl<$Res>
    extends _$ModelRegisteredCopyWithImpl<$Res, _$_ModelRegistered>
    implements _$$_ModelRegisteredCopyWith<$Res> {
  __$$_ModelRegisteredCopyWithImpl(
      _$_ModelRegistered _value, $Res Function(_$_ModelRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? events = freezed,
    Object? eventby = freezed,
    Object? iscicmember = freezed,
    Object? participantname = freezed,
    Object? companyName = freezed,
    Object? position = freezed,
    Object? phonenumber = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? checkindate = freezed,
    Object? checkin = freezed,
    Object? profile = freezed,
    Object? name = freezed,
    Object? isTap = freezed,
  }) {
    return _then(_$_ModelRegistered(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as String?,
      eventby: freezed == eventby
          ? _value.eventby
          : eventby // ignore: cast_nullable_to_non_nullable
              as String?,
      iscicmember: freezed == iscicmember
          ? _value.iscicmember
          : iscicmember // ignore: cast_nullable_to_non_nullable
              as bool?,
      participantname: freezed == participantname
          ? _value.participantname
          : participantname // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      phonenumber: freezed == phonenumber
          ? _value.phonenumber
          : phonenumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      checkindate: freezed == checkindate
          ? _value.checkindate
          : checkindate // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin: freezed == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isTap: freezed == isTap
          ? _value.isTap
          : isTap // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelRegistered implements _ModelRegistered {
  _$_ModelRegistered(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "event") this.events,
      @JsonKey(name: "event_by") this.eventby,
      @JsonKey(name: "is_cic_member") this.iscicmember,
      @JsonKey(name: "participant_name") this.participantname,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "position") this.position,
      @JsonKey(name: "phone_number") this.phonenumber,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "check_in_date") this.checkindate,
      @JsonKey(name: "check_in") this.checkin,
      @JsonKey(name: "profile") this.profile,
      @JsonKey(name: "name") this.name,
      this.isTap = false});

  factory _$_ModelRegistered.fromJson(Map<String, dynamic> json) =>
      _$$_ModelRegisteredFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "event")
  final String? events;
  @override
  @JsonKey(name: "event_by")
  final String? eventby;
  @override
  @JsonKey(name: "is_cic_member")
  final bool? iscicmember;
  @override
  @JsonKey(name: "participant_name")
  final String? participantname;
  @override
  @JsonKey(name: "company_name")
  final String? companyName;
  @override
  @JsonKey(name: "position")
  final String? position;
  @override
  @JsonKey(name: "phone_number")
  final String? phonenumber;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "check_in_date")
  final String? checkindate;
  @override
  @JsonKey(name: "check_in")
  final bool? checkin;
  @override
  @JsonKey(name: "profile")
  final String? profile;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey()
  final bool? isTap;

  @override
  String toString() {
    return 'ModelRegistered(id: $id, events: $events, eventby: $eventby, iscicmember: $iscicmember, participantname: $participantname, companyName: $companyName, position: $position, phonenumber: $phonenumber, email: $email, image: $image, checkindate: $checkindate, checkin: $checkin, profile: $profile, name: $name, isTap: $isTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelRegistered &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.eventby, eventby) || other.eventby == eventby) &&
            (identical(other.iscicmember, iscicmember) ||
                other.iscicmember == iscicmember) &&
            (identical(other.participantname, participantname) ||
                other.participantname == participantname) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.phonenumber, phonenumber) ||
                other.phonenumber == phonenumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.checkindate, checkindate) ||
                other.checkindate == checkindate) &&
            (identical(other.checkin, checkin) || other.checkin == checkin) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isTap, isTap) || other.isTap == isTap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      events,
      eventby,
      iscicmember,
      participantname,
      companyName,
      position,
      phonenumber,
      email,
      image,
      checkindate,
      checkin,
      profile,
      name,
      isTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelRegisteredCopyWith<_$_ModelRegistered> get copyWith =>
      __$$_ModelRegisteredCopyWithImpl<_$_ModelRegistered>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelRegisteredToJson(
      this,
    );
  }
}

abstract class _ModelRegistered implements ModelRegistered {
  factory _ModelRegistered(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "event") final String? events,
      @JsonKey(name: "event_by") final String? eventby,
      @JsonKey(name: "is_cic_member") final bool? iscicmember,
      @JsonKey(name: "participant_name") final String? participantname,
      @JsonKey(name: "company_name") final String? companyName,
      @JsonKey(name: "position") final String? position,
      @JsonKey(name: "phone_number") final String? phonenumber,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "check_in_date") final String? checkindate,
      @JsonKey(name: "check_in") final bool? checkin,
      @JsonKey(name: "profile") final String? profile,
      @JsonKey(name: "name") final String? name,
      final bool? isTap}) = _$_ModelRegistered;

  factory _ModelRegistered.fromJson(Map<String, dynamic> json) =
      _$_ModelRegistered.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "event")
  String? get events;
  @override
  @JsonKey(name: "event_by")
  String? get eventby;
  @override
  @JsonKey(name: "is_cic_member")
  bool? get iscicmember;
  @override
  @JsonKey(name: "participant_name")
  String? get participantname;
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @override
  @JsonKey(name: "position")
  String? get position;
  @override
  @JsonKey(name: "phone_number")
  String? get phonenumber;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "check_in_date")
  String? get checkindate;
  @override
  @JsonKey(name: "check_in")
  bool? get checkin;
  @override
  @JsonKey(name: "profile")
  String? get profile;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  bool? get isTap;
  @override
  @JsonKey(ignore: true)
  _$$_ModelRegisteredCopyWith<_$_ModelRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}
