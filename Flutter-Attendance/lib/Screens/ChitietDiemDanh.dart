import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class ChiTietDiemDanh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return ChiTietDiemDanhState();
  }

}
class ChiTietDiemDanhState extends State<ChiTietDiemDanh>{
  @override

  int count = 2;

  double rating = 2;

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Điểm Danh'),
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
        child: ListView(
          children: <Widget>[
            Center(child: Text('Rating:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),)),
            Center(
              child: SmoothStarRating(
                allowHalfRating: false,
                starCount: 5,
                rating: rating,
                size: 40.0,
                filledIconData: Icons.star,
                spacing: 1.0,
                borderColor: Colors.yellow,
                color: Colors.yellowAccent,
                onRatingChanged: (v){
                  rating = v;
                  setState(() {
                    
                  });
                },
              ),
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.deepPurple,
              onPressed: (){
                //send Danh gia 

                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text('Gửi đánh giá', style: TextStyle(fontWeight: FontWeight.bold)),
                      content: Text('Thành công')
                    );
                  }
                );
              },
              child: Text('Save',style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            )

          ],
        ),
      )
    );
  }
  ListView getLV(){
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context,int position){
          return Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Icon(Icons.person),
              ),
              subtitle: Text('Tình Trạng: '),
              title: DefaultTextStyle(
                child: Text('Tên Sinh Viên: '),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.orange,
                  fontWeight: FontWeight.w900
                ),
                
              ),
            ),
          );
        },
      );
  }
}
