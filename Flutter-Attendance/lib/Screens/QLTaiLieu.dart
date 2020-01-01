import 'package:flutter/material.dart';
import 'ChitietTaiLieu.dart';
import 'AddTaiLieu.dart';

class TaiLieu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TaiLieuState();
  }
  
}
class TaiLieuState extends State<TaiLieu>{
  @override
  int count = 5;              // kiem soat so luong ListTitle

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh Sách Tài Liệu'),
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
        child: getDanhSachTaiLieuListView(),
      ),
      backgroundColor: Colors.white,
      
    );
  }
  ListView getDanhSachTaiLieuListView(){
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
           
            title: Text('Ngày Đăng Tài liệu',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            subtitle: Text('Gửi lên bởi: '),
            onTap: (){                    // onTap 
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return TaiLieuDetail();
              }));
              debugPrint('QLTaiLieu List Tapped');
            },
            
          )
        );
      },
    );
  }

}
      


