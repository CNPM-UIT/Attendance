import 'dart:convert';

class Option{

  int id;
  String time;
  String content;

  Option({this.id, this.time, this.content});

  factory Option.fromJson(Map<String, dynamic> json){
    return Option(
      id: json['id'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'content': content,
  };

}

Option optionFromJson(String str){
  final jsonData = jsonDecode(str);
  return Option.fromJson(jsonData);
}

String optionStudentToJson(Option data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Option> allOptionFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Option>.from(jsonData.map((x) => Option.fromJson(x)));
}

String allOptionToJson(List<Option> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}