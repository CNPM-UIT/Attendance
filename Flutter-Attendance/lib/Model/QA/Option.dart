import 'dart:convert';

class Option{

  int id;  
  String content;
  int questionId;

  Option({this.id, this.content, this.questionId});

  factory Option.fromJson(Map<String, dynamic> json){
    return Option(
      id: json['Id'],
      content: json['Content'],
      questionId: json['QuestionId']
    );
  }

  Map<String, dynamic> toJson() => {
    'Id': id,
    'Content': content,
    'QuestionId': questionId
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