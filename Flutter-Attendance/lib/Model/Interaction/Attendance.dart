import 'dart:convert';

class Attendance{
  int id;
  int status;
  int studentId;
  

  Attendance({this.id, this.status, this.studentId});

  Map<String,dynamic> toJson() =>{
    'Id': id,
    'Status' : status,
    'StudentId': studentId
  };

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      id : json['Id'],
      status : json['Status'],
      studentId: json['StudentId']
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