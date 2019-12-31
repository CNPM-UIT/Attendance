import 'package:flutter/material.dart';

class ChiTietDanhGia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return ChiTietDanhGiaState();
  }

}
class ChiTietDanhGiaState extends State<ChiTietDanhGia>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Đánh Giá'),
      ),
      
    );
  }

}