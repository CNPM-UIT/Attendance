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
        title: Text('Danh Sách Điểm Danh'),
      ),
      body:getDanhSachDiemDanhListView(),
      backgroundColor: Colors.white,    
      floatingActionButton: FloatingActionButton(
        tooltip: 'Thêm điểm danh',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddDiemDanh();
          }));
        },
      ),
    );
  }

  ListView getDanhSachDiemDanhListView(){
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
                  side: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Icon(Icons.delete),
                onPressed: (){
                  // delete API calls

                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Xóa điểm danh',style: TextStyle(fontWeight: FontWeight.bold),),
                        content: Text('Thành công')
                      );
                    }
                  );
                },
              ),
            ),
            title: Text('Ngày Điểm Danh: ',style: titleStyle,),

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
      


