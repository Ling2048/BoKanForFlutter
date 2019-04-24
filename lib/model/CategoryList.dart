import 'package:json_annotation/json_annotation.dart'; 
  
part 'CategoryList.g.dart';


@JsonSerializable()
  class CategoryList extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'errorCode')
  String errorCode;

  @JsonKey(name: 'data')
  List<Data> data;

  CategoryList(this.status,this.errorCode,this.data,);

  factory CategoryList.fromJson(Map<String, dynamic> srcJson) => _$CategoryListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryListToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'appoint')
  String appoint;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'category')
  String category;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'speed')
  int speed;

  @JsonKey(name: 'sublevels')
  List<dynamic> sublevels;

  Data(this.id,this.appoint,this.name,this.category,this.status,this.speed,this.sublevels,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
