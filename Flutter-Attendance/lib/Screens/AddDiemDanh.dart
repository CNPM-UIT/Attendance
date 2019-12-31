import 'package:flutter/material.dart';

class AddDiemDanh extends StatefulWidget {
  @override
  _AddDiemDanhState createState() => _AddDiemDanhState();
}

class _AddDiemDanhState extends State<AddDiemDanh> {
  @override

  

  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
    final txtTinhTrang = TextEditingController();
    final txtSinhVien = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm điểm danh'),
        
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                controller: txtTinhTrang,
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Tình trạng field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Tình Trạng',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                controller: txtSinhVien,
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Sinh Viên field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Sinh Viên',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Theme.of(context).primaryColorLight,
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
                        title: Text('Thêm điểm danh',style: TextStyle(fontWeight: FontWeight.bold)),
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