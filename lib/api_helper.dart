import 'package:http/http.dart' as http;
import 'dart:convert';

class Base<T> {
  int status;
  String errorCode;
  List<T> data;
}

class CategoryList {
  String id;
  String appoint;
  String name;
  String category;
  int status;
  int speed;
  List<CategoryList> sublevels;

  CategoryList.fromJson(Map<String, dynamic> json) 
  : id = json['id'],
    appoint = json['appoint'],
    name = json['name'],
    category = json['category'],
    status = json['status'],
    speed = json['speed'];
}

class ApiHelper {
  static String urlCategoryList = 'http://user.bookan.com.cn/index.php?op=Resource.categoryList&libraryType=1&categoryId=1477&status=1';

  static Future<CategoryList>  getCategoryList () async {
    var response = await http.get(urlCategoryList);
    Map<String, dynamic> body = json.decode(response.body);
    var result = new CategoryList.fromJson(body);
    return result;
  }
}