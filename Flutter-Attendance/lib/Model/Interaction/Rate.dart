import 'dart:convert';

class Rate{

  int id;
  int level;

  Rate({this.id, this.level});

  factory Rate.fromJson(Map<String, dynamic> json){
    return Rate(
      id: json['id'],
      level: json['level'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'level': level,
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