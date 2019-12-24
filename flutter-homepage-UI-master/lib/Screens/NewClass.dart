import 'package:flutter/material.dart';

class Addclass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddClassState();
  }

}

class AddClassState extends State<Addclass>{
  @override
  
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textstyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add class'),

      ),
      body: Padding(
        padding: EdgeInsets.only(top:15.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                style: textstyle,
                onChanged: (value){
                  debugPrint ('ID Text Changed');
                },
                decoration: InputDecoration(
                  labelText: 'ID Lớp',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            SizedBox(width: 10.0,height: 10.0,),
            Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Tên lớp Text Changed');
                },
                decoration: InputDecoration(
                  labelText: 'Tên lớp',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
             SizedBox(width: 10.0,height: 10.0,),
             Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                style: textstyle,
                onChanged: (value){
                  debugPrint ('Student number Text Changed');
                },
                decoration: InputDecoration(
                  labelText: 'Số lượng sinh viên lớp',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            SizedBox(width: 10.0,height: 10.0),
             Padding(
              padding: EdgeInsets.only(top:15.0,bottom: 15.0),
              child: TextField(
                style: textstyle,
                onChanged: (value){
                  debugPrint ('học kỳ Text Changed');
                },
                decoration: InputDecoration(
                  labelText: 'Học kỳ',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              )
            ),
            SizedBox(width: 10.0,height: 10.0),
            Padding(
              padding: EdgeInsets.only(top:10.0,bottom:10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color:  Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: (){
                        setState(() {
                          debugPrint('Save button clicked');
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color:  Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Cancel',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: (){
                        setState(() {
                          debugPrint('Cancel button clicked');
                        });
                      },
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}