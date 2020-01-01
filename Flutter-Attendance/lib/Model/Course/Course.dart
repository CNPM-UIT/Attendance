import 'dart:convert';

class Course{

  int id;
  String code;
  String name;
  String startDate;
  String endDate;
  int studentNumber;

  Course({this.id, this.code, this.name, this.startDate, this.endDate, this.studentNumber});

  factory Course.fromJson(Map<String, dynamic> json){
    return Course(
      id: json['Id'],
      code: json['Code'],
      name: json['Mame'],
      startDate: json['StartDate'],
      endDate: json['EndDate'],
      studentNumber: json['StudentNumber'],
    );
  }

  Map<String, dynamic> toJson() => {
    'Id': id,
    'Code': code,
    'Name': name,
    'StartDate': startDate,
    'EndDate': endDate,
    'StudentNumber': studentNumber,
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