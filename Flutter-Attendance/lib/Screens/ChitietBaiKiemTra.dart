import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/QA/Question.dart';
import 'package:flutter_homepage_ui/Models/QA/Test.dart';
import 'package:flutter_homepage_ui/Service.dart';
class BaiKiemTraDetail extends StatefulWidget{
  @override

  Test test;
  BaiKiemTraDetail({Key key,@required this.test}) : super(key:key);
  State<StatefulWidget> createState() {
    
    return BaiKiemTraDetailState();
  }
}
class BaiKiemTraDetailState extends State<BaiKiemTraDetail>{
  @override
  int group ;
    

  void initState(){
    super.initState();
    group = 0;
  }
  setGroupValue(int value){
    setState(() {
      group = value;
    });
  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết Bài kiểm tra'),
        backgroundColor: Colors.lightBlue,
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
          future: getQuestion(widget.test),
          builder: (BuildContext context,AsyncSnapshot<List<Question>> snapshot){
            if(snapshot.data == null){
              return Container(
                child: Center(child: Text('Không có dữ liệu'),),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context,int position){
                  return Card(
                    color: Colors.indigo,
                    elevation: 3.0,
                    child: ExpansionTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.assignment_returned),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.arrow_drop_down_circle),
                      ),
                      title: Text('Tiêu đề Câu hỏi: ' + widget.test.id.toString(),),
                        
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.green,
                                  value: 1,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setGroupValue(T);
                                  },
                                ),
                                SizedBox(width: 10.0,),
                                Text('Fake Answer Data')
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.green,
                                  value: 2,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setGroupValue(T);
                                  },
                                ),
                                SizedBox(width: 10.0,),
                                Text('Fake Answer Data 2')
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.green,
                                  value: 3,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setGroupValue(T);
                                  },
                                ),
                                SizedBox(width: 10.0,),
                                Text('Fake Answer Data 3')
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.green,
                                  value: 4,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setGroupValue(T);
                                  },
                                ),
                                SizedBox(width: 10.0,),
                                Text('Fake Answer Data 4')
                              ],
                            ),
                          ],
                        )
                      ],
                      
                    )
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // goi API submit bai lam
          print('Submitted answer');
        },
        child: Icon(Icons.file_upload),
        tooltip: 'Submit Answer',
      ),
    );
  } 
}