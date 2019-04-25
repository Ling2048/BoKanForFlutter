// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatalogInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogInfo _$CatalogInfoFromJson(Map<String, dynamic> json) {
  return CatalogInfo(
      json['status'] as int,
      json['errorCode'] as String,
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : CatalogInfoData.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CatalogInfoToJson(CatalogInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'data': instance.data
    };

CatalogInfoData _$CatalogInfoDataFromJson(Map<String, dynamic> json) {
  return CatalogInfoData(
      json['id'] as int,
      json['name'] as String,
      json['page'] as int,
      json['category'] as int,
      json['status'] as int,
      json['html'] as int,
      json['speed'] as int,
      (json['sublevels'] as List)
          ?.map((e) =>
              e == null ? null : Sublevels.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CatalogInfoDataToJson(CatalogInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'page': instance.page,
      'category': instance.category,
      'status': instance.status,
      'html': instance.html,
      'speed': instance.speed,
      'sublevels': instance.sublevels
    };

Sublevels _$SublevelsFromJson(Map<String, dynamic> json) {
  return Sublevels(
      json['id'] as int,
      json['name'] as String,
      json['page'] as int,
      json['category'] as int,
      json['status'] as int,
      json['html'] as int,
      json['speed'] as int,
      json['sublevels'] as List);
}

Map<String, dynamic> _$SublevelsToJson(Sublevels instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'page': instance.page,
      'category': instance.category,
      'status': instance.status,
      'html': instance.html,
      'speed': instance.speed,
      'sublevels': instance.sublevels
    };
