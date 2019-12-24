class Course {
  int _id;
  String _code;
  String _name;

  Course(this._id, this._code, this._name);

   Course.fromJson(Map<String, dynamic> json) {
      id: json['id'];
      code: json['code'];
      name: json['name'];

  }
  int get id=>_id;
   String get code=>_code;
   String get name=>_name;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    return data;
  }
}
