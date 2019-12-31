import 'dart:convert';

class Semester{

  int id;
  String name;

  Semester({this.id, this.name});

  factory Semester.fromJson(Map<String, dynamic> json){
    return Semester(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'name': name,
  };
}

Semester semesterFromJson(String str){
  final jsonData = jsonDecode(str);
  return Semester.fromJson(jsonData);
}

String semesterToJson(Semester data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Semester> allSemesterFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Semester>.from(jsonData.map((x) => Semester.fromJson(x)));
}

String allSemesterToJson(List<Semester> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}