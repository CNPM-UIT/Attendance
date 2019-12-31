import 'dart:convert';

class Submission{

  int id;
  String time;
  int point;

  Submission({this.id, this.time, this.point});

  factory Submission.fromJson(Map<String, dynamic> json){
    return Submission(
      id: json['id'],
      time: json['time'],
      point: json['point'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'time': time,
    'point': point,
  };

}

Submission submissionFromJson(String str){
  final jsonData = jsonDecode(str);
  return Submission.fromJson(jsonData);
}

String submissionToJson(Submission data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Submission> allSubmissionFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Submission>.from(jsonData.map((x) => Submission.fromJson(x)));
}

String allSubmissionToJson(List<Submission> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}