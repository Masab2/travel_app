// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';
@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'Success') ProfileDataList? data,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class ProfileDataList with _$ProfileDataList {
  factory ProfileDataList({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'createdAt') String? createdDate,
  }) = _ProfileDataList;

   factory ProfileDataList.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataListFromJson(json);
}