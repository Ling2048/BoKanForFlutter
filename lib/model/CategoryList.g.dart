// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryList _$CategoryListFromJson(Map<String, dynamic> json) {
  return CategoryList(
      json['status'] as int,
      json['errorCode'] as String,
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CategoryListToJson(CategoryList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'data': instance.data
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['id'] as String,
      json['appoint'] as String,
      json['name'] as String,
      json['category'] as String,
      json['status'] as String,
      json['speed'] as int,
      json['sublevels'] as List);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'appoint': instance.appoint,
      'name': instance.name,
      'category': instance.category,
      'status': instance.status,
      'speed': instance.speed,
      'sublevels': instance.sublevels
    };
