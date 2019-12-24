class Student{
  String _id;
  String _code;
  String _fullName;
  String _avatar;

  Student(this._id,this._code,this._fullName,this._avatar);
  Student.withId(this._id,this._code,this._fullName,this._avatar);

  String get id => _id;
  String get code=> _code;
  String get fullName=> _fullName;
  String get avatar=> _avatar;

  set id(String id){
    if(id.length <= 255){
      this._id = id;
    }
  }
   set fullName(String fname){
    if(fname.length <= 255){
      this._fullName = fname;
    }
  }
   set code(String code){
    if(code.length <= 255){
      this._code = code;
    }
  }
  set avatar(String avatar){
    if(avatar.length <= 255){
      this._avatar = avatar;
    }
  }
  //create map object
  Map<String,dynamic> toMap(){
    var map = Map<String,dynamic>();

    if( id != null){
      map['id'] = _id;
    }
    map['fullName'] = _fullName;
    map['code'] = _code;
    map['avatar'] = _avatar;


    return map;
  }
  //Extract from map object
  Student.fromMapObect(Map<String,dynamic> map){
    this._id = map['id'];
    this._fullName = map['fullName'];
    this._code = map['code'];
    this._avatar = map['avatar'];
  }
}

