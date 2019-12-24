import 'package:flutter/material.dart';
import 'AttendanceList.dart';
class Lession extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LessionState();
  }
  
}

class LessionState extends State<Lession>{
  @override
  int count =10;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách các buổi học'),

      ),
      body: getDSLV(),
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
          title: Text('Date:',style:  titleStyle,),
          subtitle: Text('Status:',style: subtitle,),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Attend();
            }));
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