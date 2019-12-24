class lession{
  int _id;
  String _name;
  DateTime _time;
  int _courseid;

  lession(this._id, this._name, this._time, this._courseid);

  lession.fromJson(Map<String, dynamic> json){

        id: json["Id"];
        name: json["Name"];
        time: json["Time"];
        courseid: json["CourseId"];
    }
  int get id =>_id;
  String get name=>_name;
  DateTime get time =>_time;
  int get courseid=>_courseid;



/*  Map<String,dynamic> toMap(){
    var map = Map<String,dynamic>();

    map['Date'] = _date;
    map['ID'] = _idlession;

    return map;
  }

  lession.fromMapObject(Map<String,dynamic> map){
    this._idlession = map['ID'];
    this._date = map['date'];
  }
  */

}