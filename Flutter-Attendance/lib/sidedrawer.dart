import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          /*ListTile(
            onTap: () {
              //Navigator//
            },
            leading: Icon(Icons.event),
            title: Text("Calender"),
          ),
          ListTile(
            onTap: () {
              //Navigator//
            },
            leading: Icon(Icons.today),
            title: Text('Today Tasks'),
          ),
          ListTile(
              leading: Icon(Icons.done_outline),
              title: Text("Completed Tasks"),
              onTap: () {
                //Navigator//
              }),
          ListTile(
              leading: Icon(CupertinoIcons.clear_thick),
              title: Text("Not Completed Tasks"),
              onTap: () {
                //Navigator//
              }),
          ListTile(
              leading: Icon(Icons.playlist_add_check),
              title: Text("Requested"),
              onTap: () {
                //Navigator//
              }),
              */
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
                            return MyHomePage();
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