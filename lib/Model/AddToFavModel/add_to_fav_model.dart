// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_to_fav_model.freezed.dart';
part 'add_to_fav_model.g.dart';

@freezed
class AddToFavModel with _$AddToFavModel {
  const factory AddToFavModel({
    @JsonKey(name: "message") @Default("") String? message,                       
    @JsonKey(name: "status") @Default(false) bool? status,                       
  }) = _AddToFavModel;

  factory AddToFavModel.fromJson(Map<String, dynamic> json) =>
      _$AddToFavModelFromJson(json);
}