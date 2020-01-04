import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Course/Lession.dart';
import 'package:flutter_homepage_ui/Models/QA/Test.dart';
import 'AddBaiKiemTra.dart';
import 'ChitietBaiKiemTra.dart';
import 'package:flutter_homepage_ui/Service.dart';
class BaiKiemTra extends StatefulWidget{
  @override
  Lession lession;
  BaiKiemTra({Key key, @required this.lession}) : super(key:key);
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
          future: getTest(widget.lession),
          builder: (BuildContext context, AsyncSnapshot<List<Test>> snapshot){
            if(snapshot.data == null){
              return Container(
                child: Center(
                  child: Text('Không có dữ liệu')
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context,int index){
                  return Card(
                    color: snapshot.data[index].status == 0 ? Colors.indigo : Colors.red,
                    elevation: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                      title: Text(snapshot.data[index].title),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return BaiKiemTraDetail(test: snapshot.data[index]);
                        }));
                      },
                    ),

                  );
                },
              );
            }
          },
        )
        ),
      backgroundColor: Colors.white,
      
    );
  }
 

}
      


