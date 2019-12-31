import 'package:flutter/material.dart';

class AddBaiKiemTra extends StatefulWidget {
  @override
  _AddBaiKiemTraState createState() => _AddBaiKiemTraState();
}

class _AddBaiKiemTraState extends State<AddBaiKiemTra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm bài kiểm tra'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
        child: ListView(
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
              child: TextField(
                
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: DefaultTextStyle(
                child: Text('Deadline: '),
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
                child: Text('Câu hỏi'),
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
                child: Text('Bài làm'),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: RaisedButton(
                onPressed: (){
                  // call post API
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Thêm bài kiểm tra',style: TextStyle(fontWeight: FontWeight.bold)),
                        content: Text('Thành công'),
                      );
                    }
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}