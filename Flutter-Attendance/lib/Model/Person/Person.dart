import 'dart:convert';

class Person {
  int id;
  String firstName;
  String lastName;
  bool isMale;

  Person({this.id, this.firstName, this.lastName, this.isMale});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      isMale: json['isMale'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'firstName': firstName,
    'lastName': lastName,
    'isMale': isMale,
  };

}

Person studentFromJson(String str) {
  final jsonData = json.decode(str);
  return Person.fromJson(jsonData);
}

String studentToJson(Person data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Person> allStudentsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Person>.from(jsonData.map((x) => Person.fromJson(x)));
}

String allStudentsToJson(List<Person> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}