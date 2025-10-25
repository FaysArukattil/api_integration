class Posts {
  int? userId;
  int? id;
  String? title;
  String? body;

  Posts({this.userId, this.id, this.title, this.body});

  Posts.fromJson(Map<String, dynamic> json) {
    if (json["userId"] is int) {
      userId = json["userId"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["body"] is String) {
      body = json["body"];
    }
  }

  static List<Posts> fromList(List<Map<String, dynamic>> list) {
    return list.map(Posts.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["userId"] = userId;
    _data["id"] = id;
    _data["title"] = title;
    _data["body"] = body;
    return _data;
  }
}
