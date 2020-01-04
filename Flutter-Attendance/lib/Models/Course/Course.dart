import 'dart:convert';

class Course{

  int id;
  String code;
  String name;
  String startDate;
  String endDate;
  int semesterId;

  Course({this.id, this.code, this.name, this.startDate, this.endDate, this.semesterId});

  factory Course.fromJson(Map<String, dynamic> json){
    return Course(
      id: json['id'],
      code: json['code'],
      name: json['name'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      semesterId: json['semesterId']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'code': code,
    'name': name,
    'startDate': startDate,
    'endDate': endDate,
    'semesterId': semesterId,
  };
}

Course courseFromJson(String str){
  final jsonData = jsonDecode(str);
  return Course.fromJson(jsonData);
}

String courseToJson(Course data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Course> allCoursesFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Course>.from(jsonData.map((x) => Course.fromJson(x)));
}

String allCoursesToJson(List<Course> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}