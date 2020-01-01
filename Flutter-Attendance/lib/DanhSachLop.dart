import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/sidedrawer.dart';

import 'main.dart';

class DSLop extends StatefulWidget {
  @override
  _DSLopState createState() => _DSLopState();
}
TextEditingController txtSearch = TextEditingController();

class _DSLopState extends State<DSLop> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: SideDrawer(),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: ButtonTheme.bar(
            child: ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    _scaffoldkey.currentState.openDrawer();
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
                  'Danh sách lớp',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  )
                ),
               
              ],
            ),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.white
              )
            ),
            gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent,const Color(0xff0D37C1)],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                blurRadius: 3.0,
                spreadRadius: 1.0
              )
            ]
          ),
        ),
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
        child: 
          
            ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  color: Colors.blueGrey,
                  elevation: 3.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    title: Text('Course Name',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('End Date'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MyHomePage();
                      }));
                    },
                  ),
                );
              },
            ),
          
        
      ),
    );
  }
}


TextField Search(){
  return TextField(
    controller: txtSearch,
              style: TextStyle(fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: 'ID',
                hintStyle: TextStyle(fontStyle: FontStyle.italic)
              ),
  );
}

