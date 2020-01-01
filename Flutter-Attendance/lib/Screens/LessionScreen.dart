import 'package:flutter/material.dart';

import 'LessionDetail.dart';

class LessionScreen extends StatefulWidget {
  @override
  _LessionScreenState createState() => _LessionScreenState();
}

class _LessionScreenState extends State<LessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Danh sách buổi học'),),
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
        child: getLVLession()
      ),
    );
  }
  ListView getLVLession(){
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.indigo,
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.keyboard_arrow_right),
              backgroundColor: Colors.blue,
            ),
            title: Text('Thời gian bắt đầu:',style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LessionDetail();
              }));
            },
          ),
          
        );
      },
    );
  }
}