import 'package:dio/dio.dart';
import 'package:home33/models/info_page.dart';

class UsersInfo {
  static Future<List<Posts>> getData() async {
    Response res = await Dio().get("https://jsonplaceholder.typicode.com/posts");
    return (res.data as List).map((e) => Posts.fromJson(e)).toList();
  }
}
