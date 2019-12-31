import 'dart:convert';

class Answer{

  int id;
  int questionid;
  int selectionid;

  Answer({this.id, this.questionid, this.selectionid});

  factory Answer.fromJson(Map<String, dynamic> json){
    return Answer(
      id: json['id'],
      questionid: json['questionid'],
      selectionid: json['selectionid'],
      );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'questionid': questionid,
    'selectionid': selectionid,
  };

}

Answer answerFromJson(String str) {
  final jsonData = json.decode(str);
  return Answer.fromJson(jsonData);
}

String answerToJson(Answer data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Answer> allAnswersFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Answer>.from(jsonData.map((x) => Answer.fromJson(x)));
}

String allAnswersToJson(List<Answer> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}