import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Screens/CameraScreen.dart';

class Attend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AttendState();
  }
  
}

class AttendState extends State<Attend>{
  @override
  int count = 10;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách điểm danh'),

      ),
      body: getDSLV(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return null;
          }));
          debugPrint('FAB ');
        },
        tooltip: 'Add Attendance',
        child: Icon(Icons.add),
      ),
    );
  }

ListView getDSLV(){
  TextStyle titleStyle = Theme.of(context).textTheme.title;
  TextStyle subtitle = Theme.of(context).textTheme.subtitle;
  return ListView.builder(
    itemCount: count,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        color: Colors.grey,
        elevation: 3.0,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.keyboard_arrow_right),
          ),
          title: Text('Student Name:',style:  titleStyle,),
          subtitle: Text('Status:',style: subtitle,),
          onTap: (){
            //Navigator.push
            debugPrint('Listitle tapped');
          },
          trailing: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.delete),
          ),
        ),
      );
    },
  
  );
}


}