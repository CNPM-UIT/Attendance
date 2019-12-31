import 'package:flutter/material.dart';

class AddDanhGia extends StatefulWidget {
  @override
  _AddDanhGiaState createState() => _AddDanhGiaState();
}

class _AddDanhGiaState extends State<AddDanhGia> {
  @override
  Widget build(BuildContext context) {

    TextEditingController txtNhanXet = TextEditingController();
    TextEditingController txtRate = TextEditingController();
    TextStyle textstyle = Theme.of(context).textTheme.subtitle;

    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm Đánh giá'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left:10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
             Padding(
              padding: EdgeInsets.only(top:15.0),
              child: TextField(
                controller: txtNhanXet,
                style: textstyle,
                onChanged: (value){
                  debugPrint('Nhan Xet field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Nhận xét',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
           Padding(
              padding: EdgeInsets.only(top:15.0),
              child: TextField(
                controller: txtRate,
                style: textstyle,
                onChanged: (value){
                  debugPrint('Rate field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Rate',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: RaisedButton(
                child: Text(
                  'Save',
                  textScaleFactor: 1.5,
                ),
                onPressed: (){
                  //call post API

                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Thêm Đánh giá',style: TextStyle(fontWeight: FontWeight.bold)),
                        content: Text('Thành công')
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