import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'DanhSachLop.dart';
import 'main.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  String email = '';
  List ordname = [];
  int counter = 0;
  @override
  initState() {
    super.initState();
  }
  List<bool> selection = [true,false];     // 0 true, 1 false
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
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
            Colors.deepPurple,
            Colors.purple,
            Colors.deepPurpleAccent,
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('example'),
            accountEmail: Text('example@gmail.com'),
            otherAccountsPictures: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Colors.white,
                    size: 36.0,
                  ),
                  onPressed: () {
                    //Navigator//
                  })
            ],
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                //Navigator//
              },
          ),
          ToggleButtons(
            isSelected: selection,
            borderColor: Colors.white,
            fillColor: Colors.grey,
            borderWidth: 2,
            selectedBorderColor: Colors.white,
            selectedColor: Colors.white,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Normal Mode',
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Anonymous Mode'
                ),
              )
            ],
          ),
          ListTile(
            onTap: () {
              //Navigator//
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Confirmation',style: TextStyle(fontWeight: FontWeight.bold),),
                    content: Text('Bạn có chắc là muốn Log out'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Yes'),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                        },
                      ),
                      FlatButton(
                        child: Text('No'),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return DSLop();
                          }));
                          
                        },
                      )
                    ],
                  );
                }
              );
             
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    ));
  }
}