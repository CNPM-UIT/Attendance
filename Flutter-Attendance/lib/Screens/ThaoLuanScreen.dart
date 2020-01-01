import 'package:flutter/material.dart';

class ThaoLuanScreen extends StatefulWidget {
  @override
  _ThaoLuanScreenState createState() => _ThaoLuanScreenState();
}

class _ThaoLuanScreenState extends State<ThaoLuanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vùng thảo luận'),

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
        child: getThaoLuanLV(),
      )
    );
  }
  ListView getThaoLuanLV(){
    return ListView.builder(
          itemCount: 5,
          itemBuilder: (context,i) => new Column(
            children: <Widget>[
              Divider(height: 10),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Person Name',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Time: 15:00',style: TextStyle(color: Colors.grey,fontSize: 15.0),)
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top:7.0),
                  child: Text('Person message',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                ),
              )
            ],
          ),
        );
  }
}