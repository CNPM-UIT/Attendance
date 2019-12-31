import 'dart:convert';

class Discussion{

  int id;
  int status;

  Discussion({this.id, this.status});

  factory Discussion.fromJson(Map<String, dynamic> json){
    return Discussion(
      id: json['id'],
      status: json['status'],
      );
  }

  Map<String, dynamic> toJson() =>{
    'id': id,
    'status': status,
  };

}

Discussion discussionFromJson(String str){
  final jsonData = jsonDecode(str);
  return Discussion.fromJson(jsonData);
}

String discussionToJson(Discussion data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Discussion> allDiscussionFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Discussion>.from(jsonData.map((x) => Discussion.fromJson(x)));
}

String allDiscussionToJson(List<Discussion> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}