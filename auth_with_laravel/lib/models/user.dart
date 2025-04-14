
// class UserModel{
//    String name;
//    String email;
//    String avatar;

//   UserModel({this.name,this.email,this.avatar});
//   UserModel.fromJson(Map<String, dynamic> json)
//   :name = json('name'),
//   name = json('email'),
//   name = json('avatar')
// }


class UserModel {
  final String name;
  final String email;
  // final String avatar;

  UserModel({required this.name, required this.email});

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      name: data['name'],
      email: data['email'],
      // avatar: data['avatar'],
    );
  }
}