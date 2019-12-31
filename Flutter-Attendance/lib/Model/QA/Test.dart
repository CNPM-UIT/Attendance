import 'dart:convert';

class Test{

  int id;
  String title;
  String deadline;
  int status;

  Test({this.id, this.title, this.deadline, this.status});

  factory Test.fromJson(Map<String, dynamic> json){
    return Test(
      id: json['id'],
      title: json['title'],
      deadline: json['deadline'],
      status: json['status']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'deadline': deadline,
    'status': status,
  };

}

Test testFromJson(String str){
  final jsonData = jsonDecode(str);
  return Test.fromJson(jsonData);
}

String testToJson(Test data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Test> allTestFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Test>.from(jsonData.map((x) => Test.fromJson(x)));
}

String allTestToJson(List<Test> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}