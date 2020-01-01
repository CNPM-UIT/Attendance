import 'package:flutter/material.dart';

import 'AddDanhGia.dart';

class DanhGia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DanhGiaState();
  }
  
}
class DanhGiaState extends State<DanhGia>{
  @override
  int count = 2;              // kiem soat so luong ListTitle

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh Sách Đánh Giá'),
      ),
      body: getDanhSachDanhGiaListView(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Thêm đánh giá',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddDanhGia();
          }));
        },
      ),
    );
  }
  ListView getDanhSachDanhGiaListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context,int position){
        return Card(
          color: Colors.grey[400],
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            trailing: SizedBox(
              width: 52,
              height: 52,
              child: FlatButton(
                child: Icon(Icons.delete),
                onPressed: (){
                  // delete API calls
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Xóa đánh giá',style: TextStyle(fontWeight: FontWeight.bold),),
                        content: Text('Thành công'),
                      );
                    }
                  );
                },
              ),
            ),
            title: Text('Title',style: titleStyle,),
            subtitle: Text('Subtitle'),
            
            onTap: (){                    // onTap 
              debugPrint('QL Danh gia ListView Tapped');
            },
            
          )
        );
      },
    );
  }

}
      


