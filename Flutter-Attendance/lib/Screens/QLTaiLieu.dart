import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Course/Course.dart';
import 'package:flutter_homepage_ui/Models/Interaction/Document.dart';
import '../Service.dart';
import 'ChitietTaiLieu.dart';
import 'AddTaiLieu.dart';

class TaiLieu extends StatefulWidget{
  final Course course;

  TaiLieu({Key key,this.course}) : super(key:key);

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
        title: Center(child: Text('Danh Sách Tài Liệu')),
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
          future: getDocument(widget.course),
          builder: (BuildContext context,AsyncSnapshot<List<Documment>> snapshot){
            if (snapshot.data == null){
              return Container(
                child: Center(
                  child: Text(
                    'Không có dữ liệu'
                  ),
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context,int index){
                  return Card(
                    color: Colors.indigo,
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                    
                      title: Text(snapshot.data[index].name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      
                      onTap: (){                    // onTap 
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return TaiLieuDetail(documment: snapshot.data[index],);
                        }));
                        debugPrint('QLTaiLieu List Tapped');
                      },
                      
                    )
                  );
                },
              );
            }
          },
        ),
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
      


