import 'package:json_annotation/json_annotation.dart'; 
  
part 'CatalogHash.g.dart';

@JsonSerializable()
  class CatalogHash extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'errorCode')
  String errorCode;

  @JsonKey(name: 'data')
  List<CatalogHashData> data;

  CatalogHash(this.status,this.errorCode,this.data,);

  factory CatalogHash.fromJson(Map<String, dynamic> srcJson) => _$CatalogHashFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CatalogHashToJson(this);

}

  
@JsonSerializable()
  class CatalogHashData extends Object {

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'hash')
  String hash;

  CatalogHashData(this.page,this.hash,);

  factory CatalogHashData.fromJson(Map<String, dynamic> srcJson) => _$CatalogHashDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CatalogHashDataToJson(this);

}

  
