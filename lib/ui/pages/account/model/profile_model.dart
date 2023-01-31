import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    String? image,
    String? username,
    String? career,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

ProfileModel profiledModel = ProfileModel(
    image: 'asset/image/cic_logo.png', username: 'Hira Riaz', career: 'Ux/Ui');
