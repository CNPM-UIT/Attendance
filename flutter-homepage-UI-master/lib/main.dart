import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Screens/LessionList.dart';

import 'dart:convert';
import 'Models/Attendance.dart';
import 'sidedrawer.dart';
import 'package:flutter_homepage_ui/Screens/AttendanceList.dart';
import 'package:flutter_homepage_ui/Screens/NewClass.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Các lớp học'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final String url = "";
  List data;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 3;
  @override
  initState() {
    super.initState();
    //his.getJSONData();
  }

  Future<String> getJSONData() async {
    var response = await http.get(
      //encode url
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );

    setState(() {
      var convertDatatoJson = json.decode(response.body);
      data = convertDatatoJson['results'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: SideDrawer(),
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: ButtonTheme.bar(
              child: ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    elevation: 0,
                    color: Colors.transparent,
                  ),
                  Text(
                    'Các lớp học',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 140.0),
                    child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.playlist_add_check,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () {
                              // Navigator.push//
                            }),
                        _counter != 0
                            ? Positioned(
                                right: 11,
                                top: 11,
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Text(
                                    '$_counter',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : Text('')
                      ],
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ),
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, const Color(0xff0D37C1)]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
        ),
        body: Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.4, 0.7, 1.0],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                const Color(0xff0D37C1),
                Colors.deepPurpleAccent,
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.blueGrey,
                elevation: 3.0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                  title: Text('(Testing Text) Date:'),
                  subtitle: Text('Text: '),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Lession();
                    }));
                    debugPrint('ListTitle Tapped');
                  },
                ),
              );
          },

          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //Navigator.push
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Addclass();
            }));
            debugPrint('FAB CLICKED');
          },
          tooltip: 'Add Lession',
          child: Icon(Icons.add),
        ),
    );
  }
}