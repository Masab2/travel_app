// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: json['Status'] as bool?,
      data: json['Success'] == null
          ? null
          : ProfileDataList.fromJson(json['Success'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.data,
    };

_$ProfileDataListImpl _$$ProfileDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDataListImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      createdDate: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ProfileDataListImplToJson(
        _$ProfileDataListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'createdAt': instance.createdDate,
    };
