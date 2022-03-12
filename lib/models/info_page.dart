import 'package:hive/hive.dart';

part 'info_page.g.dart';

@HiveType(typeId: 0)
class Posts {
  Posts({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  @HiveField(1)
  int? userId;
  @HiveField(2)
  int? id;
  @HiveField(3)
  String? title;
  @HiveField(4)
  String? body;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}
