import 'package:flutter/material.dart';

class AddTaiLieu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddtaiLieuState();
}

class AddtaiLieuState extends State<AddTaiLieu> {
  @override
  Widget build(BuildContext context) {

    TextStyle textstyle = Theme.of(context).textTheme.subtitle;
    final txtTieuDe = TextEditingController();
    final txtLink = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm Tài liệu'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:15.0,left: 10.0,right: 10.0),
              child: TextField(
                controller: txtTieuDe,
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Tiêu đề field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Tiêu đề',
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
                controller: txtLink,
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Link field changed');
                },
                decoration: InputDecoration(
                  labelText: 'Link',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Theme.of(context).primaryColorLight,
                child: Text(
                  'Save',
                  textScaleFactor: 1.5,
                ),
                onPressed: (){
                  // call Post API

                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Thêm Tài liệu',style: TextStyle(fontWeight: FontWeight.bold)),
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