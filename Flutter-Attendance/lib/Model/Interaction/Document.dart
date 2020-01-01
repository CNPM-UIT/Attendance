import 'dart:convert';

class Documment{

  int id;
  String name;
  String link;
  int lessionId;

  Documment({this.id, this.name, this.link, this.lessionId});

  factory Documment.fromJson(Map<String, dynamic> json){
    return Documment(
      id: json['Id'],
      name: json['Name'],
      link: json['Link'],
      lessionId: json['LessionId']
      );
  }

  Map<String, dynamic> toJson() =>{
    'Id': id,
    'Name': name,
    'Link': link,
    'LessionId': lessionId
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