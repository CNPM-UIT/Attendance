import 'dart:convert';

class Report{

  int id;
  String comment;

  Report({this.id, this.comment});

  factory Report.fromJson(Map<String, dynamic> json){
    return Report(
      id: json['id'],
      comment: json['comment'],
      );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'comment': comment,
  };


}

Report reportFromJson(String str){
  final jsonData = jsonDecode(str);
  return Report.fromJson(jsonData);
}

String reportToJson(Report data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Report> allReportFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Report>.from(jsonData.map((x) => Report.fromJson(x)));
}

String allReportToJson(List<Report> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}