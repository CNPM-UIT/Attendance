import 'dart:convert';

class Answer{

  int id;
  int questionid;
  int selectionid;
  int submissionId;

  Answer({this.id, this.questionid, this.selectionid, this.submissionId});

  factory Answer.fromJson(Map<String, dynamic> json){
    return Answer(
      id: json['Id'],
      questionid: json['Questionid'],
      selectionid: json['Selectionid'],
      submissionId: json['SubmissionId']
      );
  }

  Map<String, dynamic> toJson() =>{
    'Id': id,
    'Questionid': questionid,
    'Selectionid': selectionid,
    'SubmissionId': submissionId
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