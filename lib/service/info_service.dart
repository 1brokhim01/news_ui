import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:home33/models/info_page.dart';

class UsersInfo {
  static Box<Posts>? myBox;
  static Future<List<Posts>> getData() async {
    await openBox();
    Response res =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    return (res.data as List).map((e) => Posts.fromJson(e)).toList();
  }

  static openBox() async {
    myBox = await Hive.openBox("currency");
  }

  static putData(List<Posts> data) async {
    for (var item in data) {
      myBox!.add(item);
    }
  }

  static registerAdapter() {
    Hive.registerAdapter(PostsAdapter());
  }
}
