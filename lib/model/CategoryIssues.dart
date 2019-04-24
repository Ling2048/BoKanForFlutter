import 'package:json_annotation/json_annotation.dart'; 
  
part 'CategoryIssues.g.dart';


@JsonSerializable()
  class CategoryIssues extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'errorCode')
  String errorCode;

  @JsonKey(name: 'data')
  List<CategoryIssuesData> data;

  CategoryIssues(this.status,this.errorCode,this.data,);

  factory CategoryIssues.fromJson(Map<String, dynamic> srcJson) => _$CategoryIssuesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryIssuesToJson(this);

}

  
@JsonSerializable()
  class CategoryIssuesData extends Object {

  @JsonKey(name: 'resourceType')
  int resourceType;

  @JsonKey(name: 'resourceId')
  String resourceId;

  @JsonKey(name: 'resourceName')
  String resourceName;

  @JsonKey(name: 'resourceCode')
  String resourceCode;

  @JsonKey(name: 'issueId')
  String issueId;

  @JsonKey(name: 'issueYear')
  String issueYear;

  @JsonKey(name: 'issueNo')
  String issueNo;

  @JsonKey(name: 'count')
  String count;

  @JsonKey(name: 'start')
  String start;

  @JsonKey(name: 'price0')
  String price0;

  @JsonKey(name: 'price1')
  String price1;

  @JsonKey(name: 'toll')
  String toll;

  @JsonKey(name: 'sort')
  String sort;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'issueName')
  String issueName;

  @JsonKey(name: 'webp')
  String webp;

  @JsonKey(name: 'html')
  String html;

  @JsonKey(name: 'jpg')
  String jpg;

  @JsonKey(name: 'txt')
  String txt;

  @JsonKey(name: 'pdf')
  String pdf;

  @JsonKey(name: 'show')
  int show;

  @JsonKey(name: 'owner')
  String owner;

  @JsonKey(name: 'categoryName')
  String categoryName;

  @JsonKey(name: 'publish')
  String publish;

  @JsonKey(name: 'listen')
  int listen;

  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'grade')
  String grade;

  @JsonKey(name: 'play')
  int play;

  @JsonKey(name: 'text')
  String text;

  @JsonKey(name: 'weight')
  int weight;

  @JsonKey(name: 'isbn')
  String isbn;

  @JsonKey(name: 'press')
  String press;

  CategoryIssuesData(this.resourceType,this.resourceId,this.resourceName,this.resourceCode,this.issueId,this.issueYear,this.issueNo,this.count,this.start,this.price0,this.price1,this.toll,this.sort,this.title,this.issueName,this.webp,this.html,this.jpg,this.txt,this.pdf,this.show,this.owner,this.categoryName,this.publish,this.listen,this.tag,this.grade,this.play,this.text,this.weight,this.isbn,this.press,);

  factory CategoryIssuesData.fromJson(Map<String, dynamic> srcJson) => _$CategoryIssuesDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryIssuesDataToJson(this);

}

  
