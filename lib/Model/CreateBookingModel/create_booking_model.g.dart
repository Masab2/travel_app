// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingModelImpl _$$CreateBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingModelImpl(
      status: json['Status'] as bool?,
      message: json['message'] as String?,
      bookingId: json['bookingId'] as String?,
      data: json['data'] == null
          ? null
          : CreateBookingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateBookingModelImplToJson(
        _$CreateBookingModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'message': instance.message,
      'bookingId': instance.bookingId,
      'data': instance.data,
    };

_$CreateBookingDataImpl _$$CreateBookingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingDataImpl(
      persons: json['persons'] as String? ?? '0',
      address: json['address'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      placeId: json['placeId'] as String? ?? '',
      placeTitle: json['title'] as String? ?? '',
      placeDescription: json['description'] as String? ?? '',
      placeImage: json['image'] as String? ?? '',
      placeCountry: json['country'] as String? ?? '',
      placeCity: json['city'] as String? ?? '',
      pricePerPerson: json['pricePerPerson'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      category: json['category'] as String? ?? '',
      bestDestination: json['bestDestination'] as String? ?? '',
      checkInDate: json['checkInDate'] as String? ?? '',
      checkOutDate: json['checkOutDate'] as String? ?? '',
      totalAmount: json['totalAmount'] as String? ?? '',
      email: json['email'] as String? ?? '',
      bookingDate: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateBookingDataImplToJson(
        _$CreateBookingDataImpl instance) =>
    <String, dynamic>{
      'persons': instance.persons,
      'address': instance.address,
      'phone': instance.phone,
      'userId': instance.userId,
      'placeId': instance.placeId,
      'title': instance.placeTitle,
      'description': instance.placeDescription,
      'image': instance.placeImage,
      'country': instance.placeCountry,
      'city': instance.placeCity,
      'pricePerPerson': instance.pricePerPerson,
      'currency': instance.currency,
      'category': instance.category,
      'bestDestination': instance.bestDestination,
      'checkInDate': instance.checkInDate,
      'checkOutDate': instance.checkOutDate,
      'totalAmount': instance.totalAmount,
      'email': instance.email,
      'date': instance.bookingDate,
    };
