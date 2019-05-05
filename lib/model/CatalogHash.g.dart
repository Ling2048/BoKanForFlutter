// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatalogHash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogHash _$CatalogHashFromJson(Map<String, dynamic> json) {
  return CatalogHash(
      json['status'] as int,
      json['errorCode'] as String,
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : CatalogHashData.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CatalogHashToJson(CatalogHash instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'data': instance.data
    };

CatalogHashData _$CatalogHashDataFromJson(Map<String, dynamic> json) {
  return CatalogHashData(json['page'] as int, json['hash'] as String);
}

Map<String, dynamic> _$CatalogHashDataToJson(CatalogHashData instance) =>
    <String, dynamic>{'page': instance.page, 'hash': instance.hash};
