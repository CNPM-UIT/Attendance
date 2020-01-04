import 'dart:convert';

class Documment{

  int id;
  String name;
  String link;
  int lessionId;

  Documment({this.id, this.name, this.link, this.lessionId});

  factory Documment.fromJson(Map<String, dynamic> json){
    return Documment(
      id: json['id'],
      name: json['name'],
      link: json['link'],
      lessionId: json['lessionId']
      );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'name': name,
    'nink': link,
    'lessionId': lessionId
  };
}

Documment docummentFromJson(String str){
  final jsonData = jsonDecode(str);
  return Documment.fromJson(jsonData);
}

String docummentToJson(Documment data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Documment> allDocummentFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Documment>.from(jsonData.map((x) => Documment.fromJson(x)));
}

String allDocummentToJson(List<Documment> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}