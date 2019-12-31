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
      body: getDanhSachTaiLieuListView(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Thêm Tài liệu',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddTaiLieu();
          }));
        },
      ),
    );
  }
  ListView getDanhSachTaiLieuListView(){
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
            trailing: CircleAvatar(
              backgroundColor: Colors.blue,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.red)
                ),
                child: Icon(Icons.delete),
                onPressed: (){
                  // delete api calls
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Xóa Tài liệu',style: TextStyle(fontWeight: FontWeight.bold),),
                        content: Text('Thành công'),
                      );
                    }
                  );
                },
              ),
            ),
            title: Text('Ngày Đăng Tài liệu',style: titleStyle,),
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
      


