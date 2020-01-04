import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Course/Lession.dart';
import 'package:flutter_homepage_ui/Models/Interaction/Discussion.dart';
import 'package:flutter_homepage_ui/Service.dart';
import 'ChatScreen.dart';

class ThaoLuanScreen extends StatefulWidget {
  @override
  Lession lession;
  _ThaoLuanScreenState createState() => _ThaoLuanScreenState();
 ThaoLuanScreen({Key key, @required this.lession}) : super(key:key);
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
        child: FutureBuilder(
          future: getDiscussion(widget.lession),
          builder: (BuildContext context, AsyncSnapshot<List<Discussion>> snapshot){
            if(snapshot.data == null){
              return Container(
                child: Center(
                  child: Text('Không có dữ liệu'),
                )
              );
            }
            else{
              /*return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,i) => new Column(
                  children: <Widget>[
                    Divider(height: 10),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ChatScreen();
                        }));
                      },
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
              );*/
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    color: snapshot.data[index].status == 0 ? Colors.indigo : Colors.red,
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text('Person Name'),
                      subtitle: Text('Chat history'),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ChatScreen();
                        }));
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      )
    );
  }
  
}