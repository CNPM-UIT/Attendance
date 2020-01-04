import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Screens/AddDiemDanh.dart';
import 'ChitietDiemDanh.dart';
class DiemDanh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DiemDanhState();
  }
  
}
class DiemDanhState extends State<DiemDanh>{
  @override
  int count = 10;              // kiem soat so luong ListTitle
  var priorities = ['Latest','Oldest'];

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Danh Sách Điểm Danh')),
      ),
      body:Container(
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
        child: getDanhSachDiemDanhListView()
        ), 
      
    );
  }

  ListView getDanhSachDiemDanhListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    
    return ListView.builder(

      itemCount: count,
      itemBuilder: (BuildContext context,int position){
        return Card(
          color: Colors.indigo,
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            
            title: Text('Ngày Điểm Danh: ',style: TextStyle(color: Colors.white,),),
            subtitle: Text('Tình trạng: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            onTap: (){                    // onTap 
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ChiTietDiemDanh();
              }));
              debugPrint('QLDiemDanh List Tapped');
            },
            
            
            
          )
        );
      },
    );
  }

}
      


