import 'package:flutter/material.dart';

class BaiKiemTraDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return BaiKiemTraDetailState();
  }
}
class BaiKiemTraDetailState extends State<BaiKiemTraDetail>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết Bài kiểm tra'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
        child:ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Tiêu Đề:'),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Trạng thái: '),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Deadline(Time): '),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Câu hỏi: '),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Bài Làm: '),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0),
              child: DefaultTextStyle(
                child:Text('Nhận xét của giảng viên:'),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            )
            
          ],
          )

        ),
    );
  }

}