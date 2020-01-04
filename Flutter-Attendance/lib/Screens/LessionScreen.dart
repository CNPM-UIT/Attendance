import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Course/Course.dart';
import 'package:flutter_homepage_ui/Models/Course/Lession.dart';

import '../Service.dart';
import 'LessionDetail.dart';

class LessionScreen extends StatefulWidget {
  @override
  final Course course;
  LessionScreen({Key key,@required this.course}) : super(key:key);
  _LessionScreenState createState() => _LessionScreenState();
}

class _LessionScreenState extends State<LessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.course.code),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xff0D37C1),
              Colors.deepPurpleAccent,
              Colors.deepPurple,
              Colors.purple
            ],
            stops: [
              0.1,
              0.4,
              0.7,
              1.0
            ]

          )
        ),
        child: FutureBuilder(
          future: getLession(widget.course),
          builder: (BuildContext context, AsyncSnapshot<List<Lession>> snapshot){
            if (snapshot.data == null){
              return Container(
                child: Center(
                  child: Text('Không có dữ liệu'),
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    color: Colors.indigo,
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.keyboard_arrow_right),
                        backgroundColor: Colors.blue,
                      ),
                      title: Text(
                        snapshot.data[index].time.toString(),
                          style: TextStyle(
                            fontWeight:FontWeight.bold
                          ),
                        ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LessionDetail(lession: snapshot.data[index],);
                        }));
                      },
                    ),
                    
                  );
                }
              );
            }
          },
        ),
      )
    );
  }
}