import 'dart:convert';

class Submission{

  int id;
  String time;
  int point;
  int testid;
  int studentid;

  Submission({this.id, this.time, this.point, this.testid, this.studentid});

  factory Submission.fromJson(Map<String, dynamic> json){
    return Submission(
      id: json['Id'],
      time: json['Time'],
      point: json['Point'],
      testid: json['TestId'],
      studentid: json['StudentId']
    );
  }

  Map<String, dynamic> toJson() => {
    'Id': id,
    'Time': time,
    'Point': point,
    'TestId': testid,
    'StudentId': studentid
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