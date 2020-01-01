import 'dart:convert';
import 'Message.dart';

class MessageLecturer extends Message{

  int lecturerId;

  int discussionId;

  MessageLecturer({this.lecturerId, this.discussionId});

  factory MessageLecturer.fromJson(Map<String, dynamic> json){
   return MessageLecturer(
      lecturerId: json['LecturerId'],
      discussionId: json['DiscussionId'],
      
     );
  }

  Map<String, dynamic> toJson() =>{

    'LecturerId': lecturerId,
    'DiscussionId': discussionId,
  };

}

MessageLecturer messagelecturerFromJson(String str) {
  final jsonData = json.decode(str);
  return MessageLecturer.fromJson(jsonData);
}

String messagelecturerToJson(MessageLecturer data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


