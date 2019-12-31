import 'dart:convert';
import 'Person.dart';

class Student extends Person {
  
  String code;
  String nickName;
  bool anonymous;

  Student({this.code, this.nickName, this.anonymous});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
    code : json['code'],
    nickName : json['nichName'],
    anonymous : json['anonymous'],
    );
  }


  Map<String, dynamic> toJson() => {
    'code': code,
    'nickName': nickName,
    'annoymous': anonymous,
  };
}

Student studentFromJson(String str) {
  final jsonData = json.decode(str);
  return Student.fromJson(jsonData);
}

String studentToJson(Student data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Student> allStudentsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Student>.from(jsonData.map((x) => Student.fromJson(x)));
}

String allStudentsToJson(List<Student> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}


