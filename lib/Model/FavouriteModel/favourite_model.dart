// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'favourite_model.freezed.dart';
part 'favourite_model.g.dart';

@freezed
class FavouriteModel with _$FavouriteModel {
  factory FavouriteModel({
    @JsonKey(name: "Status") bool? status,
    @JsonKey(name: "Success") List<FavouriteDataList>? data,
  }) = _FavouriteModel;

  factory FavouriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteModelFromJson(json);
}

@freezed
class FavouriteDataList with _$FavouriteDataList {
  factory FavouriteDataList({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'pricePerPerson') @Default('') String pricePerPerson,
    @JsonKey(name: 'currency') @Default('') String currency,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'userId') @Default('') String userid,
  }) = _FavouriteDataList;

  factory FavouriteDataList.fromJson(Map<String, dynamic> json) =>
      _$FavouriteDataListFromJson(json);
}
