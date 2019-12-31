import 'dart:convert';

class CourseStudent {
  int id;
 


  CourseStudent({this.id});

  factory CourseStudent.fromJson(Map<String, dynamic> json) {
    return CourseStudent(
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
      };
}

CourseStudent courseStudentFromJson(String str){
  final jsonData = jsonDecode(str);
  return CourseStudent.fromJson(jsonData);
}

String courseStudentToJson(CourseStudent data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<CourseStudent> allCourseStudentFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<CourseStudent>.from(jsonData.map((x) => CourseStudent.fromJson(x)));
}

String allCourseStudentToJson(List<CourseStudent> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}