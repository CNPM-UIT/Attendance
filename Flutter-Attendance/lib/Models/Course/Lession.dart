import 'dart:convert';

class Lession{

  int id;
  DateTime time;
  int lecturerId;
  int courseId;
  
  Lession({this.id, this.time, this.lecturerId, this.courseId});

  factory Lession.fromJson(Map<String, dynamic> json){
    return Lession(
      id: json["Id"],
      time: json["Time"],
      lecturerId: json['LecturerId'],
      courseId: json['CourseId']
    );
  }
  Map<String, dynamic> toJson() => {
    'Id': id,
    'Time' : time,
    'LecturedId': lecturerId,
    'CoursesId': courseId
  };

}

Lession lessionFromJson(String str) {
  final jsonData = json.decode(str);
  return Lession.fromJson(jsonData);
}

String lessionToJson(Lession data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Lession> allLessionsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Lession>.from(jsonData.map((x) => Lession.fromJson(x)));
}

String allLessionsToJson(List<Lession> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}