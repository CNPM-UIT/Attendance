import 'dart:convert';

class Attendance{
  int id;
  int status;
  

  Attendance({this.id, this.status});

  Map<String,dynamic> toJson() =>{
    'id': id,
    'status' : status,
  };

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      id : json['id'],
      status : json['status'],
    );
  }
}

Attendance attendanceFromJson(String str) {
  final jsonData = json.decode(str);
  return Attendance.fromJson(jsonData);
}

String attendanceToJson(Attendance data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Attendance> allattendancesFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Attendance>.from(jsonData.map((x) => Attendance.fromJson(x)));
}

String allattendancesToJson(List<Attendance> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}