import 'package:json_annotation/json_annotation.dart'; 
  
part 'CatalogInfo.g.dart';


@JsonSerializable()
  class CatalogInfo extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'errorCode')
  String errorCode;

  @JsonKey(name: 'data')
  List<CatalogInfoData> data;

  CatalogInfo(this.status,this.errorCode,this.data,);

  factory CatalogInfo.fromJson(Map<String, dynamic> srcJson) => _$CatalogInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CatalogInfoToJson(this);

}

  
@JsonSerializable()
  class CatalogInfoData extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'category')
  int category;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'html')
  int html;

  @JsonKey(name: 'speed')
  int speed;

  @JsonKey(name: 'sublevels')
  List<Sublevels> sublevels;

  CatalogInfoData(this.id,this.name,this.page,this.category,this.status,this.html,this.speed,this.sublevels,);

  factory CatalogInfoData.fromJson(Map<String, dynamic> srcJson) => _$CatalogInfoDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CatalogInfoDataToJson(this);

}

  
@JsonSerializable()
  class Sublevels extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'category')
  int category;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'html')
  int html;

  @JsonKey(name: 'speed')
  int speed;

  @JsonKey(name: 'sublevels')
  List<dynamic> sublevels;

  Sublevels(this.id,this.name,this.page,this.category,this.status,this.html,this.speed,this.sublevels,);

  factory Sublevels.fromJson(Map<String, dynamic> srcJson) => _$SublevelsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SublevelsToJson(this);

}

  
