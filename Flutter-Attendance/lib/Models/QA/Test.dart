import 'dart:convert';

class Test{

  int id;
  String title;
  String deadline;
  int status;
  int lessionid;

  Test({this.id, this.title, this.deadline, this.status, this.lessionid});

  factory Test.fromJson(Map<String, dynamic> json){
    return Test(
      id: json['Id'],
      title: json['Title'],
      deadline: json['Deadline'],
      status: json['Status'],
      lessionid: json['LessionId']
    );
  }

  Map<String, dynamic> toJson() => {
    'Id': id,
    'Title': title,
    'Deadline': deadline,
    'Status': status,
    'LessionId': lessionid
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