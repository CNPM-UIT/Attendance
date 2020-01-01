import 'package:flutter/material.dart';
import 'AddBaiKiemTra.dart';
import 'ChitietBaiKiemTra.dart';

class BaiKiemTra extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaiKiemTraState();
  }
  
}
class BaiKiemTraState extends State<BaiKiemTra>{
  @override
  int count = 6;              // kiem soat so luong ListTitle

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh Sách Bài Kiểm Tra'),
        
      ),
      body: getDanhSachBaiKiemTraListView(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Thêm bài kiểm tra',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddBaiKiemTra();
          }));
        },
      ),
    );
  }
  ListView getDanhSachBaiKiemTraListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context,int position){
        return Card(
          color: Colors.grey[400],
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Icon(Icons.arrow_forward),
            ),
            trailing: SizedBox(
              width: 52,
              height: 52,
              child: FlatButton(
                child: Icon(Icons.delete),
                onPressed: (){
                  // call Delete API
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Xóa bài kiểm tra',style: TextStyle(fontWeight: FontWeight.bold),),
                        content: Text('Thành công'),
                      );
                    }
                  );
                },
              ),
            ),
            title: Text('Ngày: ',style: titleStyle,),
            subtitle: Text('Lớp: '),
            onTap: (){                    // onTap 
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BaiKiemTraDetail();
              }));
              debugPrint('QL Bai Kiem Tra ListView Tapped');
            },
            
          )
        );
      },
    );
  }

}
      


