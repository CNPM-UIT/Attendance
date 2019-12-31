import 'dart:convert';

class Lession{
  int id;
  DateTime time;
  
  buoihoc({this.id, this.time});

  factory buoihoc.fromJson(Map<String, dynamic> json){
    return buoihoc(
      id: json["Id"],
      time: json["Time"],
    );
  }
  Map<String, dynamic> toJson() => {
    'id': id,
    'time' : time,
  };

}

buoihoc lessionFromJson(String str) {
  final jsonData = json.decode(str);
  return buoihoc.fromJson(jsonData);
}

String lessionToJson(buoihoc data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<buoihoc> allLessionsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<buoihoc>.from(jsonData.map((x) => buoihoc.fromJson(x)));
}

String allLessionsToJson(List<buoihoc> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}