
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_booking_model.freezed.dart';
part 'create_booking_model.g.dart';
@freezed
class CreateBookingModel  with _$CreateBookingModel {
  factory CreateBookingModel({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'bookingId') String? bookingId,
    @JsonKey(name: 'data') CreateBookingData? data,
  }) = _CreateBookingModel;

  factory CreateBookingModel.fromJson(Map<String, dynamic> json) => _$CreateBookingModelFromJson(json); 
}


@freezed
class CreateBookingData with _$CreateBookingData {
  factory CreateBookingData({
    @JsonKey(name: 'persons') @Default('0') String? persons,
    @JsonKey(name: 'address') @Default('') String? address,
    @JsonKey(name: 'phone') @Default('') String? phone,
    @JsonKey(name: 'userId') @Default('') String? userId,
    @JsonKey(name: 'placeId') @Default('') String? placeId,
    @JsonKey(name: 'title') @Default('') String? placeTitle,
    @JsonKey(name: 'description') @Default('') String? placeDescription,
    @JsonKey(name: 'image') @Default('') String? placeImage,
    @JsonKey(name: 'country') @Default('') String? placeCountry,
    @JsonKey(name: 'city') @Default('') String? placeCity,
    @JsonKey(name: 'pricePerPerson') @Default('') String? pricePerPerson,
    @JsonKey(name: 'currency') @Default('') String? currency,
    @JsonKey(name: 'category') @Default('') String? category,
    @JsonKey(name: 'bestDestination') @Default('') String? bestDestination,
    @JsonKey(name: 'checkInDate') @Default('') String? checkInDate,
    @JsonKey(name: 'checkOutDate') @Default('') String? checkOutDate,
    @JsonKey(name: 'totalAmount') @Default('') String? totalAmount,
    @JsonKey(name: 'email') @Default('') String? email,
    @JsonKey(name: 'date') @Default('') String? bookingDate,


  }) = _CreateBookingData;

  factory CreateBookingData.fromJson(Map<String, dynamic> json) => _$CreateBookingDataFromJson(json);
}