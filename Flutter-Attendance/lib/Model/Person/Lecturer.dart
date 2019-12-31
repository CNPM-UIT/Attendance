import 'dart:convert';

import 'package:flutter_homepage_ui/Model/Person/Person.dart';

class Lecturer extends Person{

  String code;
  int academicRank;

  Lecturer({this.code, this.academicRank});

  factory Lecturer.fromJson(Map<String, dynamic> json){
    return Lecturer(
      code: json['code'],
      academicRank: json['academicRank'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'code': code,
    'academicRank': academicRank,
  };

}

Lecturer lecturerFromJson(String str){
  final jsonData = jsonDecode(str);
  return Lecturer.fromJson(jsonData);
}

String lecturerToJson(Lecturer data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Lecturer> allLecturerFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Lecturer>.from(jsonData.map((x) => Lecturer.fromJson(x)));
}

String allLecturerToJson(List<Lecturer> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}