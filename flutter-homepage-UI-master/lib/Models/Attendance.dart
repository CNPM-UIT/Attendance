class Attendance{
  String _idAttendance;
  String _type;
  String _note;

  Attendance(this._idAttendance,this._type,this._note);
  String get idattendance=>_idAttendance;
  String get type=>_type;
  String get note=>_note;
  set type(String type){
    this._type = type;
  } 
  set note(String note){
    this._note = note;
  }
  set idAttendnace(String id_attendance){
    this._idAttendance = id_attendance;
  }

  Map<String,dynamic> toMap(){
    var map = Map<String,dynamic>();

    map['ID Attendance'] = this._idAttendance;
    map['type'] = this._type;
    map['note'] = this._note;

    return map;
  }

  Attendance.fromMapObject(Map<String,dynamic> map){
    map['ID Attendace'] = this._idAttendance;
    map['type'] = this._type;
    map['note'] = this._note;
  }
}