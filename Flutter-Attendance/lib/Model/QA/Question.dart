import 'dart:convert';

class Question{

  int id;
  String content;
  String solution;

  Question({this.id, this.content, this.solution});

  factory Question.fromJson(Map<String, dynamic> json){
    return Question(
      id: json['id'],
      content: json['content'],
      solution: json['solution'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'content': content,
    'solution': solution,
  };

}

Question questionFromJson(String str){
  final jsonData = jsonDecode(str);
  return Question.fromJson(jsonData);
}

String questionStudentToJson(Question data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Question> allQuestionFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Question>.from(jsonData.map((x) => Question.fromJson(x)));
}

String allQuestionToJson(List<Question> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}