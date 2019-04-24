// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryIssues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryIssues _$CategoryIssuesFromJson(Map<String, dynamic> json) {
  return CategoryIssues(
      json['status'] as int,
      json['errorCode'] as String,
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : CategoryIssuesData.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CategoryIssuesToJson(CategoryIssues instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'data': instance.data
    };

CategoryIssuesData _$CategoryIssuesDataFromJson(Map<String, dynamic> json) {
  return CategoryIssuesData(
      json['resourceType'] as int,
      json['resourceId'] as String,
      json['resourceName'] as String,
      json['resourceCode'] as String,
      json['issueId'] as String,
      json['issueYear'] as String,
      json['issueNo'] as String,
      json['count'] as String,
      json['start'] as String,
      json['price0'] as String,
      json['price1'] as String,
      json['toll'] as String,
      json['sort'] as String,
      json['title'] as String,
      json['issueName'] as String,
      json['webp'] as String,
      json['html'] as String,
      json['jpg'] as String,
      json['txt'] as String,
      json['pdf'] as String,
      json['show'] as int,
      json['owner'] as String,
      json['categoryName'] as String,
      json['publish'] as String,
      json['listen'] as int,
      json['tag'] as String,
      json['grade'] as String,
      json['play'] as int,
      json['text'] as String,
      json['weight'] as int,
      json['isbn'] as String,
      json['press'] as String);
}

Map<String, dynamic> _$CategoryIssuesDataToJson(CategoryIssuesData instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'resourceId': instance.resourceId,
      'resourceName': instance.resourceName,
      'resourceCode': instance.resourceCode,
      'issueId': instance.issueId,
      'issueYear': instance.issueYear,
      'issueNo': instance.issueNo,
      'count': instance.count,
      'start': instance.start,
      'price0': instance.price0,
      'price1': instance.price1,
      'toll': instance.toll,
      'sort': instance.sort,
      'title': instance.title,
      'issueName': instance.issueName,
      'webp': instance.webp,
      'html': instance.html,
      'jpg': instance.jpg,
      'txt': instance.txt,
      'pdf': instance.pdf,
      'show': instance.show,
      'owner': instance.owner,
      'categoryName': instance.categoryName,
      'publish': instance.publish,
      'listen': instance.listen,
      'tag': instance.tag,
      'grade': instance.grade,
      'play': instance.play,
      'text': instance.text,
      'weight': instance.weight,
      'isbn': instance.isbn,
      'press': instance.press
    };
