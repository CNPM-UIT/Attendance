import 'dart:convert';



class Lecturer{

  String code;
  int academicRank;
  int id;
  String firstName;
  String lastName;
  bool isMale;


  Lecturer({this.code, this.academicRank, this.id, this.firstName, this.lastName, this.isMale});

  factory Lecturer.fromJson(Map<String, dynamic> json){
    return Lecturer(
      code: json['Code'],
      academicRank: json['AcademicRank'],
      id: json['Id'],
      firstName: json['FirstName'],
      lastName: json['LastName'],
      isMale: json['IsMale']
    );
  }

  Map<String, dynamic> toJson() =>{
    'Code': code,
    'AcademicRank': academicRank,
    'Id': id,
    'FirstName': firstName,
    'LastName': lastName,
    'isMale': isMale
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