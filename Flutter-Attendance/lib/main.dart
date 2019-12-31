import 'package:flutter/material.dart';
import 'sidedrawer.dart';
import 'package:flutter_homepage_ui/Screens/QLBaiKiemTra.dart';
import 'package:flutter_homepage_ui/Screens/QLDanhGia.dart';
import 'package:flutter_homepage_ui/Screens/QlDiemDanh.dart';
import 'package:flutter_homepage_ui/Screens/QLThaoLuan.dart';
import 'package:flutter_homepage_ui/Screens/QLTaiLieu.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

final TextEditingController userNameController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasks',
      home: MyHomePage(title: 'Home'),
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
    //this.getJSONData();
  }
  Future<String> getJSONData() async{
    var response = await http.get(
      //encode url
      Uri.encodeFull(url),
      headers: {"//Vary":"//Content-Type"}
    );

    setState(() {
      var convertDatatoJSON = json.decode(response.body);
      data = convertDatatoJSON[''];
    });
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
                    'Home',
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
                        return TaiLieu();
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
                                Icons.attach_file,
                                size: 60.0,
                              ),
                              Text("Quản lý Tài Liệu")
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
                        return BaiKiemTra();
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
                                Icons.assignment_turned_in,
                                size: 60.0,
                              ),
                              Text("Quản lý Bài Kiểm Tra")
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
                        return DiemDanh();
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
                              Text("Quản lý Điểm Danh")
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
                        return ThaoLuan();
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
                              Text("Quản lý Thảo Luận")
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
                        return DanhGia();
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
                                Icons.check_circle_outline,
                                size: 60.0,
                              ),
                              Text('Quản lý Đánh Giá')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // GridTile(
              //   child: Card(
              //     color: Colors.transparent,
              //     child: InkWell(
              //       splashColor: Colors.blue.withAlpha(30),
              //       onTap: () {
              //         // Navigator.push//
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //             border: Border.all(color: Colors.white70)),
              //         width: 250,
              //         height: 75,
              //         child: Center(
              //           child: Container(
              //             color: Colors.transparent,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment
              //                   .center, // Replace with a Row for horizontal icon + text
              //               children: <Widget>[
              //                 Icon(
              //                   Icons.add_box,
              //                   size: 60.0,
              //                 ),
              //                 Text("Thống Kê")
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ]),
          ),
        ));
  }
}

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue,Colors.teal],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: ListView(
          children: <Widget>[
            header(),
            text(),
            button(),
          ],
        ),
      ),
    );
  }
}
Container header(){
  return Container(
    margin: EdgeInsets.only(top:50.0),
    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
    child: Text(
      "Login Screen",
      style: TextStyle(
        color: Colors.white60,
        fontSize: 35.0,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}
Container text(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
    child: Column(
      children: <Widget>[
        TextFormField(
          controller: userNameController,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white60),
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'UserName',
            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white60)),
            hintStyle: TextStyle(color: Colors.white60)
          ),
        ),
        SizedBox(height: 20.0,),
        TextFormField(
          controller: userNameController,
          cursorColor: Colors.white,
          obscureText: true,
          style: TextStyle(color: Colors.white60),
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Password',
            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white60)),
            hintStyle: TextStyle(color: Colors.white60)
          ),
        )
      ],
    ),
  );
}
Container button(){
  return Container(
    height: 40.0,
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    margin: EdgeInsets.only(top:15.0),
    child: RaisedButton(
      onPressed: userNameController.text == "" || passwordController.text == "" ? null : (){
        //Navigator.push
      },
      elevation: 0.0,
      color: Colors.deepPurple,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white60),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
    ),
  );
}