
class Todomodel {
  String? title;
  String? id;

  Todomodel({this.title, this.id});

  Todomodel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    id = json["id"];
  }

  static List<Todomodel> fromList(List<Map<String, dynamic>> list) {
    return list.map(Todomodel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["id"] = id;
    return _data;
  }
}