import 'dart:convert';
import 'Person.dart';

class Student{
  
  String code;
  String nickName;
  bool anonymous;
  int id;
  String firstName;
  String lastName;
  bool isMale;

  Student({this.code, this.nickName, this.anonymous, this.id, this.firstName, this.lastName, this.isMale});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
    code : json['Code'],
    nickName : json['NichName'],
    anonymous : json['Anonymous'],
    id: json['Id'],
    firstName: json['FirstName'],
    lastName: json['LastName'],
    isMale: json['IsMale']
    );
  }


  Map<String, dynamic> toJson() => {
    'Code': code,
    'NickName': nickName,
    'Annoymous': anonymous,
    'Id': id,
    'FirstName': firstName,
    'LastName': lastName,
    'isMale': isMale
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


