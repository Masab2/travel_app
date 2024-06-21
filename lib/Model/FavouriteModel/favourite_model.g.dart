// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteModelImpl _$$FavouriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteModelImpl(
      status: json['Status'] as bool?,
      data: (json['Success'] as List<dynamic>?)
          ?.map((e) => FavouriteDataList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavouriteModelImplToJson(
        _$FavouriteModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.data,
    };

_$FavouriteDataListImpl _$$FavouriteDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouriteDataListImpl(
      id: json['_id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      country: json['country'] as String? ?? '',
      city: json['city'] as String? ?? '',
      pricePerPerson: json['pricePerPerson'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      category: json['category'] as String? ?? '',
      userid: json['userId'] as String? ?? '',
    );

Map<String, dynamic> _$$FavouriteDataListImplToJson(
        _$FavouriteDataListImpl instance) =>
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
      'userId': instance.userid,
    };
