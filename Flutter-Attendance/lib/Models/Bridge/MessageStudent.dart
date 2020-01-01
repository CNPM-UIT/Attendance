import 'dart:convert';
import 'Message.dart';

class MessageStudent extends Message{

  int studentId;

  int discussionId;

  MessageStudent({this.studentId, this.discussionId});

  factory MessageStudent.fromJson(Map<String, dynamic> json){
   return MessageStudent(
      studentId: json['StudentId'],
      discussionId: json['DiscussionId'],
      
     );
  }

  Map<String, dynamic> toJson() =>{

    'StudentId': studentId,
    'DiscussionId': discussionId,
  };

}

MessageStudent messagestudentFromJson(String str) {
  final jsonData = json.decode(str);
  return MessageStudent.fromJson(jsonData);
}

String messagestudentToJson(MessageStudent data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


