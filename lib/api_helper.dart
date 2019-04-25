import 'package:http/http.dart' as http;
import 'dart:convert';
import './model/CategoryList.dart';
import './model/CategoryIssues.dart';

class ApiHelper {
  static String urlBase = 'http://user.bookan.com.cn/index.php';
  static String urlCategoryList = urlBase + '?op=Resource.categoryList&libraryType=1&categoryId=1477&status=1'; //分类列表
  // static String urlCategoryIssues = urlBase + '?op=Resource.categoryIssues&instanceId=1477&libraryType=1&categoryId=42981&pageNum=1&limitNum=50';

  static Future<CategoryList>  getCategoryList () async {
    var response = await http.get(urlCategoryList);
    Map<String, dynamic> body = json.decode(response.body);
    var result = new CategoryList.fromJson(body);
    return result;
  }

  static Future<CategoryIssues>  getCategoryIssues (String categoryId, int pageNum) async {
    var url = urlBase + '?op=Resource.categoryIssues&instanceId=1477&libraryType=1&categoryId=$categoryId&pageNum=$pageNum&limitNum=50';
    var response = await http.get(url);
    // print(response.body);
    Map<String, dynamic> body = json.decode(response.body);
    var result = new CategoryIssues.fromJson(body);
    return result;
  }
}