import 'dart:convert';

class Lession{

  int id;
  String time;
  int lecturerId;
  int courseId;
  
  Lession({this.id, this.time, this.lecturerId, this.courseId});

  factory Lession.fromJson(Map<String, dynamic> json){
    return Lession(
      id: json["id"],
      time: json["time"],
      lecturerId: json['lecturerId'],
      courseId: json['courseId']
    );
  }
  Map<String, dynamic> toJson() => {
    'id': id,
    'time' : time,
    'lecturedId': lecturerId,
    'coursesId': courseId
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