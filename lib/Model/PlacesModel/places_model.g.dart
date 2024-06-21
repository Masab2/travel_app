// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacesModelImpl _$$PlacesModelImplFromJson(Map<String, dynamic> json) =>
    _$PlacesModelImpl(
      apiStatus: json['Status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PlacesDataList.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Success'] as String?,
    );

Map<String, dynamic> _$$PlacesModelImplToJson(_$PlacesModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.apiStatus,
      'data': instance.data,
      'Success': instance.message,
    };

_$PlacesDataListImpl _$$PlacesDataListImplFromJson(Map<String, dynamic> json) =>
    _$PlacesDataListImpl(
      id: json['_id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      country: json['country'] as String? ?? '',
      city: json['city'] as String? ?? '',
      pricePerPerson: json['pricePerPerson'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      category: json['category'] as String? ?? '',
    );

Map<String, dynamic> _$$PlacesDataListImplToJson(
        _$PlacesDataListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'country': instance.country,
      'city': instance.city,
      'pricePerPerson': instance.pricePerPerson,
      'currency': instance.currency,
      'category': instance.category,
    };
