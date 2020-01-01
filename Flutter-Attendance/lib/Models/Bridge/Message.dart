import 'dart:convert';

class Message{

  int id;
  String time;
  String content;

  Message({this.id, this.time, this.content});

  factory Message.fromJson(Map<String, dynamic> json){
    return Message(
      id: json['id'],
      time: json['time'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'time': time,
    'content': content,
  };

}

Message messegesFromJson(String str){
  final jsonData = jsonDecode(str);
  return Message.fromJson(jsonData);
}

String messegesStudentToJson(Message data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Message> allmessegesFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Message>.from(jsonData.map((x) => Message.fromJson(x)));
}

String allmessegesToJson(List<Message> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}