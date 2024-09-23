
class UserModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? profileImage;

  UserModel({this.id, this.name, this.email, this.phone, this.profileImage});

  UserModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["phone"] is String) {
      phone = json["phone"];
    }
    if(json["profileImage"] is String) {
      profileImage = json["profileImage"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["profileImage"] = profileImage;
    return _data;
  }
}