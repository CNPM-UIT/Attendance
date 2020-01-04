import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Course/Lession.dart';
import 'package:flutter_homepage_ui/Screens/QLBaiKiemTra.dart';

import 'ChitietDiemDanh.dart';
import 'QLDiemDanh.dart';
import 'QLTaiLieu.dart';
import 'THaoLuanScreen.dart';

class LessionDetail extends StatefulWidget {
  @override
  Lession lession;
  _LessionDetailState createState() => _LessionDetailState();
  LessionDetail({Key key, @required this.lession}) : super(key:key);
}

class _LessionDetailState extends State<LessionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết buổi học ' + widget.lession.id.toString()),
      ),
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
        child: Center(
         child: GridView.count(crossAxisCount: 2, children: <Widget>[
           GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return BaiKiemTra(lession: widget.lession,);
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.assignment,
                                size: 60.0,
                              ),
                              Text(
                                "Bài Kiểm Tra",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ThaoLuanScreen(lession: widget.lession,);
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.chat_bubble,
                                size: 60.0,
                              ),
                              Text("Thảo Luận",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ChiTietDiemDanh();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.assignment_ind,
                                size: 60.0,
                              ),
                              Text("Điểm Danh",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
         ])

        )
          
      ),
      
      
    );
  }
}