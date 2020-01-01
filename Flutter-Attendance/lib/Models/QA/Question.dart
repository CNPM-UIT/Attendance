import 'dart:convert';

class Question{

  int id;
  String content;
  String solution;
  int testId;

  Question({this.id, this.content, this.solution, this.testId});

  factory Question.fromJson(Map<String, dynamic> json){
    return Question(
      id: json['Id'],
      content: json['Content'],
      solution: json['Solution'],
      testId: json['TestId']
    );
  }

  Map<String, dynamic> toJson() => {
    'Id': id,
    'Content': content,
    'Solution': solution,
    'TestId': testId
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