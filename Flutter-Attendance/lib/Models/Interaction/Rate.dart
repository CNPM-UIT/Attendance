import 'dart:convert';

class Rate{

  int id;
  int level;
  int studentId;
  int lessionId;

  Rate({this.id, this.level, this.studentId, this.lessionId});

  factory Rate.fromJson(Map<String, dynamic> json){
    return Rate(
      id: json['Id'],
      level: json['Level'],
      studentId: json['StudentId'],
      lessionId: json['LessionId']
    );
  }

  Map<String, dynamic> toJson() =>{
    'Id': id,
    'Level': level,
    'StudentId': studentId,
    'LessionId': lessionId
  };
  
}

Rate rateFromJson(String str){
  final jsonData = jsonDecode(str);
  return Rate.fromJson(jsonData);
}

String rateToJson(Rate data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Rate> allRateFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Rate>.from(jsonData.map((x) => Rate.fromJson(x)));
}

String allRateToJson(List<Rate> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}