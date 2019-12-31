import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Screens/QLTaiLieu.dart';

class TaiLieuDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return TaiLieuDetailState();
  }
}

class TaiLieuDetailState extends State<TaiLieuDetail> {
  @override
  
  TextEditingController linkController = TextEditingController();
  TextEditingController tieudeController = TextEditingController();

  Widget build(BuildContext context) {
    
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết Tài liệu'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.only(top:15.0,left:10.0,right:10.0),
        child: ListView(
          children: <Widget>[
           Padding(
            padding: EdgeInsets.only(top:15.0,bottom:15.0),
             child: TextField(
               controller: tieudeController,
               style: textStyle,
               onChanged: (value){
                 debugPrint('Link Changed');
               },
               decoration: InputDecoration(
                 labelText: 'Tiêu đề',
                 labelStyle: textStyle,
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
               ),
             ),
           ),
          
          SizedBox(width: 10.0,height: 10.0,),

          Padding(
             padding: EdgeInsets.only(top:15.0,bottom:15.0),
             child: TextField(
               controller: linkController,
               style: textStyle,
               onChanged: (value){
                 debugPrint('Link Changed');
               },
               decoration: InputDecoration(
                 labelText: 'Link Tài Liệu',
                 labelStyle: textStyle,
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
               ),
             ),
           ),

          ],
        ),
      )
    );
  }

}