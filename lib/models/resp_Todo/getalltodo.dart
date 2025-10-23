// ignore_for_file: no_leading_underscores_for_local_identifiers

class Getalltodo {
  List<Todos>? todos;
  int? total;
  int? skip;
  int? limit;

  Getalltodo({this.todos, this.total, this.skip, this.limit});

  Getalltodo.fromJson(Map<String, dynamic> json) {
    if (json["todos"] is List) {
      todos = json["todos"] == null
          ? null
          : (json["todos"] as List).map((e) => Todos.fromJson(e)).toList();
    }
    if (json["total"] is int) {
      total = json["total"];
    }
    if (json["skip"] is int) {
      skip = json["skip"];
    }
    if (json["limit"] is int) {
      limit = json["limit"];
    }
  }

  static List<Getalltodo> fromList(List<Map<String, dynamic>> list) {
    return list.map(Getalltodo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (todos != null) {
      _data["todos"] = todos?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Todos {
  int? id;
  String? todo;
  bool? completed;
  int? userId;

  Todos({this.id, this.todo, this.completed, this.userId});

  Todos.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["todo"] is String) {
      todo = json["todo"];
    }
    if (json["completed"] is bool) {
      completed = json["completed"];
    }
    if (json["userId"] is int) {
      userId = json["userId"];
    }
  }

  static List<Todos> fromList(List<Map<String, dynamic>> list) {
    return list.map(Todos.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["todo"] = todo;
    _data["completed"] = completed;
    _data["userId"] = userId;
    return _data;
  }
}
