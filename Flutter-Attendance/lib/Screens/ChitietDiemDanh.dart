import 'package:flutter/material.dart';

class ChiTietDiemDanh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return ChiTietDiemDanhState();
  }

}
class ChiTietDiemDanhState extends State<ChiTietDiemDanh>{
  @override

  int count = 2;

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Điểm Danh'),
      ),
      body: ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context,int position){
          return Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Icon(Icons.person),
              ),
              subtitle: Text('Tình Trạng: '),
              title: DefaultTextStyle(
                child: Text('Tên Sinh Viên: '),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.orange,
                  fontWeight: FontWeight.w900
                ),
                
              ),
            ),
          );
        },
      )
    );
  }
  
}