import 'dart:convert';

class Person {
  int id;
  String firstName;
  String lastName;
  bool isMale;

  /*Person({this.id, this.firstName, this.lastName, this.isMale});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['Id'],
      firstName: json['FirstName'],
      lastName: json['LastName'],
      isMale: json['IsMale'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'Id': id,
    'FirstName': firstName,
    'LastName': lastName,
    'IsMale': isMale,
  };
*/
}
