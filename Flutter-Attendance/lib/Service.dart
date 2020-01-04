import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_homepage_ui/Models/Interaction/Discussion.dart';
import 'package:flutter_homepage_ui/Models/QA/Question.dart';
import 'package:http/http.dart' as http;

import 'Models/Course/Course.dart';
import 'Models/Course/Lession.dart';
import 'Models/Interaction/Document.dart';
import 'Models/QA/Test.dart';
import 'Screens/QLTaiLieu.dart';
import 'Models/Interaction/Discussion.dart';
import 'Models/Interaction/Rate.dart';

Future<List<Course>> getCourse() async{
  String url = 'http://165.22.251.9:5000/api/Courses';
  http.Response res = await http.get(url);
  return allCoursesFromJson(res.body);
}


Future<List<Lession>> getLession(Course course) async{
  String url = 'http://165.22.251.9:5000/api/Lessions/OfCourse/'+ course.id.toString();
  http.Response res = await http.get(url);
  if(res.statusCode == 200){
    List<dynamic> body = jsonDecode(res.body);
    List<Lession> lessions = body.map((dynamic item) => Lession.fromJson(item)).toList();
    return lessions;
  }
  else{
    return throw"Cannot get Lessions";
  }
}

Future<List<Documment>> getDocument(Course course) async{
  String url = 'http://165.22.251.9:5000/api/Documents/OfCourse/'+ course.id.toString();
  http.Response res = await http.get(url);
  if(res.statusCode == 200){
    List<dynamic> body = jsonDecode(res.body);
    List<Documment> documents = body.map((dynamic item) => Documment.fromJson(item)).toList();
    return documents;
  }
  else{
    return throw"Cannot get document";
  }
}

Future<List<Discussion>> getDiscussion(Lession lession) async {
  String url ='http://165.22.251.9:5000/api/Discussions/OfLession/' + lession.id.toString();
  http.Response res = await http.get(url);
  if (res.statusCode == 200){
    List<dynamic> body =jsonDecode(res.body);
    List<Discussion> discussions = body.map((dynamic item) => Discussion.fromJson(item)).toList();
    return discussions;
  }
  else{
    return throw "Cannot get Discussion";
  }
}

Future<List<Test>> getTest(Lession lession) async{
  String url = 'http://165.22.251.9:5000/api/Tests/OfLession/' + lession.id.toString();
  http.Response res = await http.get(url);
  if(res.statusCode == 200){
    List<dynamic> body = jsonDecode(res.body);
    List<Test> tests = body.map((dynamic item) => Test.fromJson(item)).toList();
    return tests;
  }
  else{
    return throw"Cannot get Tests";
  }
}
Future<List<Question>> getQuestion(Test test) async{
  String url = 'http://165.22.251.9:5000/api/Questions/OfLession/' +test.id.toString();
  http.Response res = await http.get(url);
  if(res.statusCode == 200){
    List<dynamic> body = jsonDecode(res.body);
    List<Question> questions = body.map((dynamic item) => Question.fromJson(item)).toList();
    return questions;
  }
  else{
    return throw "Cannot get Questions";
  }
}

makeRatePostRequest() async{
  String url = 'http://165.22.251.9:5000/api/Rates';
  Map<String,String> headers = {"Content-Type": "application/json-patch+json"};
  String json = '{"id":"0","level":"", "studentId":"","lessionId":""}';

}

Future<Rate> CreateRatePostRequest(Rate rate) async { 
  String url = 'http://165.22.251.9:5000/api/Rates';
  final response = await http.post(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    body: rateToJson(rate)
    );
  return rateFromJson(response.body);
}