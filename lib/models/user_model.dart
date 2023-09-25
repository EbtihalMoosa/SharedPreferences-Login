class UserModel {
  String? name;
  String? email;
  String? password;
  String? phone;
  String? image;

  UserModel({this.name, this.email, this.password, this.phone, this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // "name"= name;
    };
  }
}
