// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'places_model.freezed.dart';
part 'places_model.g.dart';


@freezed
class PlacesModel with _$PlacesModel {
  factory PlacesModel({
    @JsonKey(name: 'Status') bool? apiStatus,
    @JsonKey(name: 'data') List<PlacesDataList>? data,
    @JsonKey(name: 'Success') String? message,
  }) = _PlacesModel;

  factory PlacesModel.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelFromJson(json);
}

@freezed
class PlacesDataList with _$PlacesDataList {
  factory PlacesDataList({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'pricePerPerson') @Default('') String pricePerPerson,
    @JsonKey(name: 'currency') @Default('') String currency,
    @JsonKey(name: 'category') @Default('') String category,
  }) = _PlacesDataList;

  factory PlacesDataList.fromJson(Map<String, dynamic> json) =>
      _$PlacesDataListFromJson(json);
}

