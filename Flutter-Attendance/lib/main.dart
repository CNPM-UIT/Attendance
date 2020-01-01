import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/DanhSachLop.dart';
import 'Screens/LessionScreen.dart';
import 'Screens/THaoLuanScreen.dart';
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
      home: LoginPage(),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DSLop();
                      }));
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    elevation: 0,
                    color: Colors.transparent,
                  ),
                  Text(
                    'Student Home',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  
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
                              Text(
                                "Tài Liệu",
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
                        return LessionScreen();
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
                              Text("Buổi học",style: TextStyle(color: Colors.white),)
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
            Container(
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
            ),

            Container(
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
                    controller: passwordController,
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
            ),
            Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              margin: EdgeInsets.only(top:15.0),
              child: RaisedButton(
                onPressed: (){
                  //Navigator.push
                  if (userNameController.text != null && passwordController.text != null){
                    //check username and password , call API
                    // if success, check value
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DSLop();
                    }));
                  }
                  else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Lỗi ràng buộc',style: TextStyle(fontWeight: FontWeight.bold),),
                          content: Text('Username hoặc password đang trống'),
                        );
                      }
                    );
                  }
                },
                elevation: 0.0,
                color: Colors.deepPurple,
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white60),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
              ),
            )
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
      onPressed: (){
        //Navigator.push
        if (userNameController.text != null && passwordController.text != null){
          //check username and password , call API
          // if success
          
        }
        else {

        }
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